---
Title: SchemeTalk
---
#SchemeTalk
<b>SchemeTalk</b> is a Smalltalk like OO system as an extension to and written/bootstrapped in Scheme.

<br><br>
<center><img src="http://www.iam.unibe.ch/~verwaest/schemetalk/schemetalk-object-inspector.png" style="width: 40em"><br>
<small>SchemeTalk's graphical inspector</small></center>
<br>

SchemeTalk consists of a fairly small set of core classes with an extensive meta-object protocol. Methods and slots are first-class. This allows us to extend the language from within.

SchemeTalk implements <i>metamethods</i> (a type of methods comparable to [Python](http://www.python.org)'s decorators) and uses it to implement <i>actors</i> with <i>asynchronous methods</i> which return <i>futures</i>.  Which is then again extended with support for <i>remote method invocation</i>. 

In order to show its close relation to real Smalltalk code, SchemeTalk implements a Smalltalk-to-SchemeTalk compiler. This compiler translates Smalltalk code to its SchemeTalk equivalent. SchemeTalk provides a bootstrapping environment for Smalltalk code on top of which the compiled Smalltalk code is then loaded. Primitives are implemented in a single Smalltalk-Primitives class with a straightforward definition of the most common primitives. This implementation was used to bootstrap parts of the mini.image and a more recent <a href="http://www.pharo-project.org">Pharo</a> image.

<small>In order to use the graphical part, please run on top of [DrScheme](http://www.plt-scheme.org/).</small>

##Publications

-  Toon Verwaest and Lukas Renggli, "<i>Safe Reflection Through Polymorhpism</i>", ([submission](/archive/papers/Verw09aSafeReflectionThroughPolymorphism.pdf)) is accepted for publication at [Casta '09](http://casta.unibe.ch).

##Download SchemeTalk
SchemeTalk is available at:


-  PLT [http://www.iam.unibe.ch/~verwaest/schemetalk/schemetalk-0.3-4.1.3.plt](http://www.iam.unibe.ch/~verwaest/schemetalk/schemetalk-0.3-4.1.3.plt)
-  ZIP [http://www.iam.unibe.ch/~verwaest/schemetalk/schemetalk-0.3-sources.zip](http://www.iam.unibe.ch/~verwaest/schemetalk/schemetalk-0.3-sources.zip)
-  TAR [http://www.iam.unibe.ch/~verwaest/schemetalk/schemetalk-0.3-sources.tar.bz2](http://www.iam.unibe.ch/~verwaest/schemetalk/schemetalk-0.3-sources.tar.bz2)
-  SVN [https://www.iam.unibe.ch/scg/svn_repos/Sources/SchemeTalk/](https://www.iam.unibe.ch/scg/svn_repos/Sources/SchemeTalk/)

##Documentation
SchemeTalk is being documented piece by piece on my blog:

-  [Installing and Getting Started](http://www.iam.unibe.ch/~verwaest/blog/?p=5)
-  [First-class Slots](http://www.iam.unibe.ch/~verwaest/blog/?p=6)
-  [First-class Methods](http://www.iam.unibe.ch/~verwaest/blog/?p=7)
-  [Actors](http://www.iam.unibe.ch/~verwaest/blog/?p=17)

##Updates

-  24.06.09: Currently the direct development of SchemeTalk is stalled in favor of the offspring project [Pinocchio](%base_url%/research/pinocchio) which is implemented more low-level to be more fundamental.
-  19.03.09: Links to PLT and SRC for version '0.3'. Actually a lot has changed since 0.2, which was noticeable in the subversion. I just forgot to update the main links. Most important change: now SchemeTalk works nicely together with DrScheme for developing. When errors occur DrScheme will highlight the location where they occurred and you will get a nice stacktrace.
<h2>People</h2>
[Toon Verwaest](%base_url%/staff/toonverwaest)
