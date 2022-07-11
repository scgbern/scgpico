---
Title: Fame
---

<big style="font-size:120%;"><b>Fame</b></big> is a polyglot framework for metamodeling at runtime.

## When to use Fame?


-  Serialize (=read/write) your objects.
-  Exchange objects between applications.
-  Exchange object-models between applications.
-  Write generic apps that run with any objects.

<br><b>Fame is available for</b> &rArr;  Java, Python, Ruby, Smalltalk, etc&hellip;


---

# Tutorials


-  [FM3](%base_url%/wiki/projects/archive/fame/fm3) meta-metamodel
-  [MSE](%base_url%/wiki/projects/archive/fame/mse) file format 
-  [MSE Specification](%base_url%/wiki/projects/archive/fame/msespecification) 


-  [Fame API Documentation](http://www.iam.unibe.ch/~akuhn/fame/api)
-  [Model@runtime 2008 paper](http://www.iam.unibe.ch/~akuhn/d/Kuhn-2008-MRT-Fame.pdf)

# Features


-  Fame features both code generation and runtime annotation processing.
-  Fame is available for Java, Python, Smalltalk, and (partially) C# and Ruby.
-  Fame is based on [FM3](%base_url%/wiki/projects/archive/fame/fm3), a self-described meta-metamodel.
-  Fame uses the [MSE](%base_url%/wiki/projects/archive/fame/mse) file format to exchange all of meta-metamodel, metamodels and models
-  Fame can infer a missing metamodel, given a model file only.
-  Fame supports ownership, ie dedicated ownership properties.
-  Fame has support for Demeter traversals (Smalltalk version, beta).

&nbsp;

<b>Contact</b> either <script>document.write(String.fromCharCode(60, 97, 32, 104, 114, 101, 102, 61, 34, 109, 97, 105, 108, 116, 111, 58, 97, 107, 117, 104, 110, 64, 105, 97, 109, 46, 117, 110, 105, 98, 101, 46, 99, 104, 34, 62, 97, 107, 117, 104, 110, 64, 105, 97, 109, 46, 117, 110, 105, 98, 101, 46, 99, 104, 60, 47, 97, 62));</script> and <script>document.write(String.fromCharCode(60, 97, 32, 104, 114, 101, 102, 61, 34, 109, 97, 105, 108, 116, 111, 58, 118, 101, 114, 119, 97, 101, 115, 116, 64, 105, 97, 109, 46, 117, 110, 105, 98, 101, 46, 99, 104, 34, 62, 118, 101, 114, 119, 97, 101, 115, 116, 64, 105, 97, 109, 46, 117, 110, 105, 98, 101, 46, 99, 104, 60, 47, 97, 62));</script>, or mailinglist


-  Subscribe to [fame-dev mailinglist](https://www.iam.unibe.ch/mailman/listinfo/fame-dev)
-  Send mail to <script>document.write(String.fromCharCode(60, 97, 32, 104, 114, 101, 102, 61, 34, 109, 97, 105, 108, 116, 111, 58, 102, 97, 109, 101, 45, 100, 101, 118, 64, 105, 97, 109, 46, 117, 110, 105, 98, 101, 46, 99, 104, 34, 62, 102, 97, 109, 101, 45, 100, 101, 118, 64, 105, 97, 109, 46, 117, 110, 105, 98, 101, 46, 99, 104, 60, 47, 97, 62));</script>

<small><b>License:</b> Fame is Open Source! Main authors of Fame are [Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn) and [Toon Verwaest](%base_url%/staff/toonverwaest), University of Bern, Switzerland, with contributions by Sandro Dezanet, ibidem, Pierrick Bouazza and Sara Sellos, ENSIETA, France. Fame for Smalltalk is distributed under BSD license. Fame for Java and Python are distributed under (Lesser) Gnu Public License. See source files for details.</small>

---

# Download

Fame for Squeak Smalltalk 


-  [http://www.squeaksource.com/Fame.html](http://www.squeaksource.com/Fame.html)

Fame for Java  


-  [https://www.iam.unibe.ch/scg/svn_repos/Sources/Fame/Java/](https://www.iam.unibe.ch/scg/svn_repos/Sources/Fame/Java/)

Fame for Python  


-  [https://www.iam.unibe.ch/scg/svn_repos/Sources/Fame/Python/](https://www.iam.unibe.ch/scg/svn_repos/Sources/Fame/Python/)

Fame for Cincom Smalltalk


-   Bundle "Fame" on Cincom's [Public Store Repository](http://www.cincomsmalltalk.com/CincomSmalltalkWiki/PostgreSQL+Access+Page).
   
Fame for C# (work in progress)


-  [https://www.iam.unibe.ch/scg/svn_repos/Sources/Fame/Csharp/](https://www.iam.unibe.ch/scg/svn_repos/Sources/Fame/Csharp/) 

Fame for Ruby (work in progress)


-  [https://www.iam.unibe.ch/scg/svn_repos/Sources/Fame/Ruby/](https://www.iam.unibe.ch/scg/svn_repos/Sources/Fame/Ruby/) 

---

# Known Clients <small>(out-of-date, please mail me if you are an user)</small>


-  The [Moose](http://moose.unibe.ch) project uses Fame as the kernel of their reengineering environment (Univ of Bern, Univ of Lugano, INRIA Lille)


-  The [FAMIX](http://moose.unibe.ch/docs/famix) exchange format is based on FM3 and Fame (12\+ users...)


-  The [Fetch](http://lore.cmi.ua.ac.be/fetchWiki/index.php/Main_Page) tool chain features MSE / Famix export (Univ of Antwerp)


-  The [ASF\+SDF](http://www.cwi.nl/htbin/sen1/twiki/bin/view/Meta-Environment/WebHome) project features MSE import and export (Univ of Amsterdam)


-  Are you a user? add yourself.

<script>document.getElementsByTagName("h1").item(0).innerText="Welcome to Fame"</script>
