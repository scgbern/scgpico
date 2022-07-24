---
Title: Installation
---
#Installation
ChangeBoxes are tested and developed with Squeak 3.9. You need an image that is compiled with NewCompiler. Shout is always nice, too.

## Demo Image

-  Get a demo image with ChangeBoxes at [/download/changeboxes/ChangeboxesDemo.zip](/download/changeboxes/ChangeboxesDemo.zip) (25. 1. 2007)
-  For the latest version, get the ChangeBoxes and then ChangeBox-activation packages at [http://www.squeaksource.com/ChangeBoxes.html](http://www.squeaksource.com/ChangeBoxes.html)
-  Run the SUnit Tests in ChangeBoxes-Tests in order to assert that everything went well

## Fresh & Experimental Installation
(A precompiled image with NewCompiler is available at http://www.iam.unibe.ch/~denker/temp/NewCompiler.zip)

-  Get the latest version of Squeak 3.9 at [http://ftp.squeak.org/3.9](http://ftp.squeak.org/3.9)
-  Get the latest version of AST at [http://www.squeaksource.com/AST.html](http://www.squeaksource.com/AST.html)
-  Get the latest version of NewCompiler at [http://www.squeaksource.com/NewCompiler.html](http://www.squeaksource.com/NewCompiler.html)
-  Compile whole image using Recompiler: [Recompiler new inspect; recompileImage] forkAt: 30
-  Get the latest ChangeBoxes package at [http://www.squeaksource.com/ChangeBoxes.html](http://www.squeaksource.com/ChangeBoxes.html)
-  Get the latest ChangeBox-activation package at the same place
-  Get Change as a First Class Entity

#Monticello
You can load the source from Monticello. Get ChangeBoxes first, then ChangeBox-activation.

```
 MCHttpRepository
    location: 'http://www.squeaksource.com/ChangeBoxes'
    user: ''
    password: ''
```

#Shout

-  Get ShoutUsingNewCompiler.3.15-tween.73 at [http://www.squeaksource.com/shout.html](http://www.squeaksource.com/shout.html)
-  Get ShoutOmniBrowser-tween.3 at the same place
-  Get the latest version of ChangeBox-shout at [http://www.squeaksource.com/ChangeBoxes.html](http://www.squeaksource.com/ChangeBoxes.html)
