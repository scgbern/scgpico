---
Title: Reflectivity
---

#Overview

Welcome to the Reflectivity!

The Reflectivity is work on progress based on Squeak. It provides extensions to the standard reflection features of Smalltalk for both structural and behavioral reflection: - Structural reflection is extended by *sub-method reflection*: the structure of method bodies has as a first class and causally connected representation that can easily be extended and annotated.

-  Behavioral Reflection is provided by a new and improved version of Geppetto, a realization of *Partial Behavioral Reflection* as pioneered by [Reflex](http://pleiad.dcc.uchile.cl/reflex).

There are some slides from a demo at DYLA07 [here](http://www.iam.unibe.ch/~denker/talks/07DYLA/07ReflectivityDylan.pdf) 

#Subsystems

-  Persephone. This provides *Reflective Methods* and a small "JIT" compiler (extensible with plugins) to generate bytecode for execution.
-  Geppetto. Reflex for Squeak, redone. Simplified a lot from the original Geppetto, it uses annotations on method structure instead of bytecode manipulation. 

#Download
Latest Release: 0.19, Ready to run image: [Reflectivity.zip](%assets_url%/download/reflectivity/reflectivity.zip) 

How to install from Pharo (pre-closures) (more extensive description: [INSTALL.txt](%assets_url%/download/reflectivity/INSTALL.txt)): 

-  get Pharo from [pharoproject.org](http://pharoproject.org)
-  install ReflectivityLoader from [SqueakSource](http://www.squeaksource.com/Reflectivity.html)
-  load packages with *ReflectivityLoader new loadStablePackages*
-  Recompile the image using class *PERecompiler* 

#Publications
[Fixed Query](%assets_url%/scgbib/?query=*)

#Users of Reflectivity
 Reflectivity has been used in some projects: 

-  Hermion: Exploiting Runtime Information in the IDE, [Paper](%base_url%/scgbib), (David R&ouml;thlisberger)
-  TypePlug: Pluggable Types for Squeak, [Paper](%base_url%/scgbib), (Nik Haldiman)
-  Transactional Memory for Smalltalk, [Paper](%base_url%/scgbib), (Lukas Renggli)
-  HistOOry. Manage simply the past: Persistent Objects. [HistOOry Website](http://decomp.ulb.ac.be/frdricpluquet/researchactivities/histoory/), (Fr&eacute;d&eacute;ric Pluquet) 

#Contact

- Main Contact: [Marcus Denker](http://marcusdenker.de/) 
- The Reflectivity Mailinglist is reflectivity@iam.unibe.ch. You can use the [Mailman web interface](https://www.iam.unibe.ch/mailman/listinfo/reflectivity) to subscribe. 
- For reporting bugs, please use [the bug tracker](http://code.google.com/p/reflectivity/issues/list).
