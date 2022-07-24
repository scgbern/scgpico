#! /usr/bin/env python3
#
# rmMarkdownLinks [opt] <linkfile> -- given a list of markdown files and broken URLs, remove the URLs from the Markdown links
#
# --------------------------------------------------
import sys, os, getopt, re, filecmp
from os.path import exists
# --------------------------------------------------
usageString = """Usage: rmMarkdownLinks [-diff|-doit] <link-file>
  -d -- only report the diffs (default)
  -m -- actually modify the files in place

  <link-file> is a tab-separated file where each line contains a file path and a broken link to fix.
  rmMarkdownLinks will replace "[text](URL)" by "text" """
# --------------------------------------------------
# Default mode:
mode='diff'
# --------------------------------------------------
def eprint(*args, **kwargs):
  print(*args, file=sys.stderr, **kwargs)
# --------------------------------------------------
def usage():
  eprint(usageString)
  sys.exit(1)
# --------------------------------------------------
# TO DO
# (1) handle diff vs modify
# (2) if the same file has multiple URLs, need to run multiple regexes
#
# Need to transform the list of file+url entries to a dictionary file -> list of urls
def main(argv):
  linkFile = processCommandLine(argv)
  file2UrlDict = readAndSplitLinkFile(linkFile)
  # eprint(file2UrlDict)
  for path, urls in file2UrlDict.items():
    # check both index and sidebar files
    index = path + "/index.md"
    fixFile(index, urls)
    sidebar = path + "/sidebar.md"
    if exists(sidebar):
      fixFile(sidebar, urls)
# --------------------------------------------------
# Fix the URLs  in the given file
def fixFile(file, urls):
  if not exists(file):
    eprint(f"Skipping non-existent file {file}")
    return
  contents = getFileContents(file)
  newContents = contents
  for url in urls:
    newContents = replaceLinkByTitle(url, newContents)
  if mode == 'diff':
    diff(file, contents, newContents)
  elif mode == 'modify':
    modify(file, contents, newContents)
# --------------------------------------------------
# Set the globals mode and linkFile, or report errors
#
def processCommandLine(argv):
  global mode
  try:
    opts, args = getopt.getopt(argv, "dm")
  except getopt.GetoptError as err:
    eprint(f"getopt failed with error: {err}") # Somehow never triggered
    usage()
  for opt, arg in opts:
    if opt == '-d':
      mode='diff'
    elif opt == '-m':
      mode='modify'
    else:
      eprint("Unrecognized option") # Never get here
      usage()
  if len(args) != 1:
    eprint(f"Expected one file argument, got {len(args)}")
    usage()
  else:
    linkFile = args[0]
    return linkFile
# --------------------------------------------------
# Read the file containing pairs of files and urls.
# Return a dictionary mapping files to lists of urls.
def readAndSplitLinkFile(file):
  assertFileExists(file)
  f = open(file, "r")
  listOfPairs = list(map(lambda l : l.split(), f.readlines()))
  f.close()
  dict = {}
  for file, url in listOfPairs:
    if file not in dict:
      dict[file] = []
    dict[file].append(url)
  return dict
# --------------------------------------------------
# Replace occurrences of [TITLE](URL) by TITLE.
# Escape special chars in the URL so it can be used in the regex.
def replaceLinkByTitle(url, text):
  escapedUrl = re.sub(r'([.&?+\-\\])', r'\\\1', url)
  pattern = r'\[([^\]]+)\]\(' + escapedUrl + '\)'
  try:
    return re.sub(pattern, r'\1', text)
  except Exception as err:
    eprint(f"Regex substitution failed:")
    eprint(pattern)
    eprint(f"Url is: {url}")
    eprint(f"Error was: {err}")
    sys.exit(1)
# --------------------------------------------------
def getFileContents(file):
    assertFileExists(file)
    f = open(file, "r")
    contents = f.read()
    f.close()
    return contents
# --------------------------------------------------
def assertFileExists(file):
  if not exists(file):
    eprint(f"No such file: {file}")
    sys.exit(1)
# --------------------------------------------------
# Show the differences between the old and new contents of a file
def diff(file, contents, newContents):
  old = contents.splitlines()
  new = newContents.splitlines()
  eprint("---")
  eprint(f"DIFFS for {file}:")
  count = 0
  for i in range(len(old)):
    if old[i] != new[i]:
      count = count +1
      eprint(f"< {old[i]}")
      eprint(f"> {new[i]}")
  eprint(f"Total {count} diff{'' if count == 1 else 's'} found")
# --------------------------------------------------
def modify(file, oldContents, newContents):
  if oldContents == newContents:
    eprint(f"File {file} is unchanged")
    return
  try:
    f = open(file, "w")
    f.write(newContents)
    f.close
    eprint(f"Updated {file}")
  except Exception as err:
    eprint(f"Failed to update {file}")
    eprint(f"Error was: {err}")
# --------------------------------------------------
if __name__ == "__main__":
  main(sys.argv[1:])
# --------------------------------------------------
