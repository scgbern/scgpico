---
Title: How to use subversion
---
#How to use subversion
<b>Q How do I install a subversion client?
</b>A You can grab an installer for Mac OSX from here: [http://www.codingmonkeys.de/mbo/](http://www.codingmonkeys.de/mbo/) (see download links on the right panel)

<b>Q How do I authenticate myself to svn?
</b>A You should add a user and password for yourself using htpasswd to the password file (in ~scg/.subversion/).  Please read the README-FIRST.txt that is on asterix in the .subversion directory. 

1. To add yourself as a new user, please generate a new login/password by running:
```
 htpasswd svn-auth <login>
```

2. Once in asterix:/home/scg/.subversion edit the svn-access file to add your user. Generate a new login/password by running:
```
 htpasswd svn-auth <login>
```

3. You can test it by opening the following URL:
[https://www.iam.unibe.ch/scg/svn_repos](https://www.iam.unibe.ch/scg/svn_repos)
You should be prompted for your login and password to view the repository. 

4. <B>IMPORTANT</B> After making your changes, run <code>svn commit</code>. The authentication and access files are themselves under svn control, and you should commit your changes. In fact, you can check out the corresponding project and make changes remotely using the Makefile commands. (If you fail to commit, you may generate conflicts and break subversion.)

Remote users should use htpasswd -n to generate an entry and ask an scg member to add this to the authorization file. You may need to add a new user to the scg group in the authorization file (also in ~scg/.subversion/). Non-scg users should be granted access individually to specific directories.  (See the examples, or read [http://svnbook.red-bean.com/en/1.2/svn.serverconfig.httpd.html#svn.serverconfig.httpd.authz](http://svnbook.red-bean.com/en/1.2/svn.serverconfig.httpd.html#svn.serverconfig.httpd.authz))

<b>Q How do I create a new SCG svn directory?</b>
 
A  Make sure you are in the directory where the files are that you want to import and then type
 svn import https://www.iam.unibe.ch/scg/svn_repos/MyPath

<b>Q How do I checkout an SCG svn directory?
</b>A svn co https://www.iam.unibe.ch/scg/svn_repos/MyPath

<b>Q Can I set an environment variable to tell svn which repository to use?
</b>A No. But you only need to specify the repository when importing a new directory or checking out an existing one. You might want to define an environment variable as follows:
```
 setenv sv https://www.iam.unibe.ch/scg/svn_repos
```
Then you can simply checkout as follows:
```
 svn co $sv/scgbib
```

<b>Q How does svn differ from cvs?
</b>A See: [http://svnbook.red-bean.com/nightly/en/svn.forcvs.html](http://svnbook.red-bean.com/nightly/en/svn.forcvs.html)

<b>Q How can I migrate my cvs project to svn?
</b>Login to scg@asterix and run the script scgcvs2svn. For example:
```
 svn mkdir https://www.iam.unibe.ch/scg/svn_repos/Moose
 scgcvs2svn ParsingByExample Moose/ParsingByExample
```
This will take the ParsingByExample cvs project and migrate it to the svn directory Moose/ParsingByExample. There is a -to flag if you only want to migrate the trunk (i.e., no branches or tags). If you want to get rid of the branches, tags and trunk directories altogether, use the commands <code>svn mkdir</code>, <code>svn mv</code> and <code>svn delete</code> to restructure the migrated project.

<b>Q How do I resolve conflicts with svn
</b>A As before, but now you must use "svn resolved" to announce that you have resolved the conflicts. See:
[http://svnbook.red-bean.com/nightly/en/svn.ref.svn.c.resolved.html](http://svnbook.red-bean.com/nightly/en/svn.ref.svn.c.resolved.html)

<b>Q Subversion keeps printing <code>Authentication realm: ...</code> when I try to commit my changes, and prompts me again for my login and password.  What does this mean and how do I fix it?
</b>A You don't have permission to modify that directory. Perhaps you need to update the svn-access file on asterix.  See instructions in ~scg/.subversion/

<b>Q How do I tag a particular snapshot of a paper or a project?
</b>A Tags and Branches do not really exist in Subversion, it only knows about "copies". A non-modified copy behaves like a tag, a modified copy is a branch.
For papers, this means we can make copies of all stages of a paper, eg.

- submittedCONF05
- cameraready
- archivedCONF05
- trunk [the main working version]
and so on.
```
 svn copy trunk/   submittedCONF05
```
will do the copy. The nice thing now is that we can now add to this copy. (E.g., to add later the pdf and the comments of the reviewers as Reviews.txt) Same with the others: the camera-ready copy will get its PDF, the archivedSCG will have the modifications for the citation infos in the tex and the final PDF (named like the one in the scg archive. This way we can retain the complete history easily, e.g. rejected submissions and a journal version can be continued with full history of the conference version.

<b>Q How can I enable keyword expansion in svn documents?
</b>A Use: svn propset svn:keywords "Date Author Id Log" <file>

<b>Q Where is svn on asterix?
</b>A It will appear in your path if you do "module load subversion.

<b>Q How can I view my subversion directories through the web?
</b>A [https://www.iam.unibe.ch/scg/svn_repos](https://www.iam.unibe.ch/scg/svn_repos) will prompt you for your svn login and password

<b>Q How can I make a directory publicly visible?
</b>A Grant read access to everybody by adding a line "\* = r" for your directory in the authorization file (in ~scg/.subversion/)

<b>Q How can I setup a proxy?
</b>Edit the file ~/.subversion/servers

<b>Q I am using Omnigraffle 4 and it saves .graffle directories, not files. What can I do? </b>
In the Terminal, execute
```
  defaults write com.omnigroup.OmniGraffle PrivateGraffleFlatFile 0
```

<b> Q I get strange errors with an elsart.cls moved over from CVS. What's the problem? </b>
elseart.cls uses a feature of CVS that sets the version info inside the file. When moving to subversion, this string  is left empty, which will confuse Latex completely. Solution: Get a new file from [http://authors.elsevier.com/latex/elsart.cls](http://authors.elsevier.com/latex/elsart.cls) or look closely at the beginning and fix your copy.

<b> Q pdfs and pictures are added as text files. What can I do? </b>
edit ~/.subversion/config, at the end of the file:

```
 enable-auto-props = yes

 \*.bat = svn:mime-type=text/plain;svn:eol-style=native
 \*.bmp = svn:mime-type=image/bmp
 \*.c = svn:mime-type=text/plain;svn:eol-style=native
 \*.css = svn:mime-type=text/css;svn:eol-style=native
 \*.cpp = svn:mime-type=text/plain;svn:eol-style=native
 \*.cxx = svn:mime-type=text/plain;svn:eol-style=native
 \*.dylan = svn:mime-type=text/plain;svn:eol-style=native
 \*.dylgram = svn:mime-type=text/plain;svn:eol-style=native
 \*.el = svn:mime-type=text/plain;svn:eol-style=native
 \*.gif = svn:mime-type=image/gif
 \*.h = svn:mime-type=text/plain;svn:eol-style=native
 \*.hdp = svn:mime-type=text/plain;svn:eol-style=native
 \*.htm = svn:mime-type=text/html;svn:eol-style=native
 \*.html = svn:mime-type=text/html;svn:eol-style=native
 \*.ico = svn:mime-type=image/x-icon
 \*.idl = svn:mime-type=text/plain;svn:eol-style=native
 \*.intr = svn:mime-type=text/plain;svn:eol-style=native
 \*.jam = svn:mime-type=text/plain;svn:eol-style=native
 \*.java = svn:mime-type=text/plain;svn:eol-style=native
 \*.jpeg = svn:mime-type=image/jpeg
 \*.jpg = svn:mime-type=image/jpeg
 \*.lid = svn:mime-type=text/plain;svn:eol-style=native
 \*.lisp = svn:mime-type=text/plain;svn:eol-style=native
 \*.lout = svn:mime-type=text/plain;svn:eol-style=native
 \*.m4 = svn:mime-type=text/plain;svn:eol-style=native
 \*.pdf = svn:mime-type=application/pdf
 \*.pl = svn:mime-type=text/plain;svn:eol-style=native;svn:executable
 \*.png = svn:mime-type=image/png
 \*.py = svn:mime-type=text/plain;svn:eol-style=native;svn:executable
 \*.rc = svn:mime-type=text/plain;svn:eol-style=native
 \*.sgm = svn:mime-type=text/sgml;svn:eol-style=native
 \*.sgml = svn:mime-type=text/sgml;svn:eol-style=native
 \*.sh = svn:mime-type=text/plain;svn:eol-style=native;svn:executable
 \*.spec = svn:mime-type=text/plain;svn:eol-style=native
 \*.sql = svn:mime-type=text/plain;svn:eol-style=native
 \*.tif = svn:mime-type=image/tiff
 \*.tiff = svn:mime-type=image/tiff
 \*.text = svn:mime-type=text/plain;svn:eol-style=native
 \*.txt = svn:mime-type=text/plain;svn:eol-style=native
 \*.xhtml = svn:eol-style=native
 \*.xml = svn:mime-type=text/xml;svn:eol-style=native
 \*.tex = svn:mime-type=text/plain;svn:eol-style=native
 \*.cls = svn:mime-type=text/plain;svn:eol-style=native
 \*.graffle = svn:mime-type=application/octet-stream 
 INSTALL = svn:mime-type=text/plain;svn:eol-style=native
 Makefile = svn:mime-type=text/plain;svn:eol-style=native
 Makefile.in = svn:mime-type=text/plain;svn:eol-style=native
 README = svn:mime-type=text/plain;svn:eol-style=native
```

<b>Q How can I rename a subversion repository</b>

svn move OLD-URL NEW-URL
