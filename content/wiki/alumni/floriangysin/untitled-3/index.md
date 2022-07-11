---
Title: Notes Concerning...
---

# AA Back
``` 15.02.2010
```

# TODO I


-  Clean up stuff CHECK
-  Document:
	-  writing
	-  bender
	-  research
	-  things...



-  Create index over downloaded Java src CHECK
-  Finish bender GUI / transform mockup prototype to real thing CHECK
-  Check if it works, test it... CHECK


-  Sortable by trustability CHECK


-  Play around with metric and collect data for some nice graphs
-  Analyse metric/graphs/trustability ranking
-  Read about rankings on Wiki
-  Introduce ranked metric!


-  Set up tex for thesis CHECK
-  Write thesis

<br><br><br>

# json with jruby
Native gem once again does not work. \*http://json-jruby.rubyforge.org/
```sudo jruby -S gem install json-jruby
```
Or maybe use this?
```sudo jruby -S gem install json_pure
```
<br><br><br>

# sqlite3 with ruby
When you don't have the jdbc-sqlite3 adapter installed you get a helpful error message about a missing gem with the command for installing it listed â it lists the wrong name: 
suggested install command: 
```gem install activerecord-jdbc-sqlite3-adapter
```
actual install command: 
```gem install activerecord-jdbcsqlite3-adapter
```
<br><br><br>


#Ruby Parsing
JRuby-Parser by Thomas Enebo @ Kenai<br>
[http://kenai.com/projects/jruby-parser/](http://kenai.com/projects/jruby-parser/)<br>
Thomas Enebo's blog<br>
[http://blog.enebo.com/](http://blog.enebo.com/)<br>

Work by Peter Sommerlad's Group (Eclipse Ruby refactoring plugin)<br>
[http://r2.ifs.hsr.ch/trac](http://r2.ifs.hsr.ch/trac)<br>
Their paper (with part on getting comments into Ruby AST)<br>
[http://portal.acm.org/citation.cfm?id=1297884](http://portal.acm.org/citation.cfm?id=1297884)<br><br><br><br>

# Bibliography
Find the SCG .bib file in the Subversion repo at:<br>
[https://www.iam.unibe.ch/scg/svn_repos/scgbib/](https://www.iam.unibe.ch/scg/svn_repos/scgbib/)<br>
>> scg.bib<br>
Use Citeulike Account at<br>
[http://www.citeulike.org/](http://www.citeulike.org/)<br>
to export a personal .bib file<br>
>> fgysin.bib<br>
And attach both to the LaTex using
```\bibliographystyle{abbrv}
\bibliography{scg,fgysin}
```
Then you can cite using 
```\cite{ ...bibTexKeys... }
```
<br><br><br>


#IRC Client
Command line based IRC client: irssi
```/connect chat.freenote.net 8000
```
Connect to freenote hub.
```/nick fgysin
```
Change nick to 'fgysin'
```/msg nickserv identify <password>
```
Identify the current nick with a password. (So you can actually use it...)
```/join #jruby            /join 3206
```
Join a chat room.
```/wc
```
Leave a chat room.<br><br><br><br>

#Ruby Require
```puts $:
puts `pwd`
```
Prints the load path, and the current folder (.). This is where require expects the things to import.<br><br><br><br>

#SVN Mirroring
Mirroring svn with Git is easily done with the git plugin. (git-svn, see How To's)
Problem: It seems only to work with quite a limited number of repos. I tried about 10 and only like 2 worked - I'm not sure why though, could be that the repos are out of date or protected by authentication. Anyway, this could pose a problem...<br><br><br><br>

#CVS Mirroring
Works fine - mirroring is very slow though, this will take quite a lot of time for the big repositories!<br>

**Perfomance issue?**
Maybe it would be better to create local SVN/CVS repos first and only then using Git to create/import the proper git repositories.<br><br><br><br>

#GIT Mirroring
Is really easy and compared to SVN/CVS mirroring is damn fast too.<br><br><br><br>

#Axel proxy
Specify the axel proxy as follows:

-  env variable http_proxy or HTTP_PROXY (dunno which)
-  in the systemwide config /etc/axelrc &mdash;> this also works for axel calls within ruby!<br><br><br><br>


#Luke - Lucene Index Browser
Luke is a browser to browse Lucene indizes. Comes as a standalone .jar and has a very nice GUI. &mdash;> Works like a charm. <br>
<a href="http://www.getopt.org/luke/">Luke Homepage</a><br><br><br><br>


#Java Source Code Parsing
Lea's Code:
```https://www.iam.unibe.ch/scg/svn_repos/Sources/JUnit3To4/src/ch/unibe/junit3to4/transformation/JUnit4Generator.java
```

The com.sun.tools classes actually are not meant to be used like that. If you want to do it anyway you must change warning type in Eclipse from error to warn. (Otherwise files wont compile...)

Also there is not much doc around (no API, etc...), but one can download the src here:
```http://hg.openjdk.java.net/jdk6/jdk6/langtools/archive/tip.zip
```
<br><br><br>


#Project Metadata - Try1

- Pages from Ohloh search: 1000 (1-1000)
- Expected resulting n# of projects: 10'000
- Projects actually downloaded: 4369
- Projects in DB (with enlistments) 3785

- **Programming Languages (name|n# of projects):**
- C|711
- Java|705
- C\+\+|461
- PHP|363
- Python|268
- XML|206
- JavaScript|168
- HTML|151
- Perl|143
- C#|111
- Ruby|88
- Haskell|53
- shell script|46
- C/C\+\+|3
- Objective-C|38
- Autoconf|36
- Lisp|23
- Pascal|19
- Emacs Lisp|17
- Erlang|168
- SQL|14
- Ada|10
- XSL Transformation|9
- Tcl|8
- Assembly|7
- Make|7
- TeX/LaTeX|7
- ActionScript|6
- Lua|6
- Objective Caml|6
- Visual Basic|6
- Groovy|4
- XML Schema|4
- CSS|3
- D|3
- Structured Basic|3
- AWK|2
- Ebuild|2
- Eiffel|2
- Scheme|2
- Vim Script|2
- Automake|1
- Boo|1
- Classic Basic|1
- Exheres|1
- Factor|1
- Fortran (Fixed-format)|1
- Matlab|1
- MetaFont|1
- Scala|1
- Smalltalk|1
- Vala|1

```select toplang, count(toplang) as nop from projects_light group by toplang order by nop desc;
```
<br><br><br>
