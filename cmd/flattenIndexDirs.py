#! /usr/bin/env python3
#
# flattenIndexDirs --- walk a pico directory hierarchy and replace dirs containing only an index.md by a file dirname.md
#
# --------------------------------------------------
import os, sys, shutil
# from os.path import exists
# --------------------------------------------------
def main(argv):
  cwd = os.getcwd()
  assert os.path.basename(cwd) == 'content'
  for dir in subdirs(cwd):
    flattenOrRecurse(dir)
# --------------------------------------------------
def flattenOrRecurse(dir):
  if len(os.listdir(dir)) == 1:
    flatten(dir)
  else:
    os.chdir(dir)
    for sub in subdirs('.'):
      flattenOrRecurse(sub)
    os.chdir('..')
# --------------------------------------------------
def flatten(dir):
  # print(f"Flattening {os.getcwd()}/{dir}")
  assert os.listdir(dir)[0] == 'index.md'
  assert not os.path.exists(f"{dir}.md")
  print(f"MOVING {dir}/index.md TO {dir}.md in {os.getcwd()}")
  shutil.move(f"{dir}/index.md", f"{dir}.md")
  os.rmdir(dir)
# --------------------------------------------------
def subdirs(path):
  return list(filter(lambda d: os.path.isdir(d),  os.listdir(path)))
# --------------------------------------------------
def subdirs(path):
  return list(filter(lambda d: os.path.isdir(d),  os.listdir(path)))
# --------------------------------------------------
if __name__ == "__main__":
  main(sys.argv[1:])
# --------------------------------------------------
