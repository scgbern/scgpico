---
Title: NewCompiler
---
#NewCompiler
The NewCompiler is a Smalltalk-to-Bytecode compiler for Squeak. 

-  Support for full block closures (optional)
-  Easy to understand and modify
-  Based on the AST of the Refactoring Engine
-  Retargable Backend
-  SmaCC based Parser 

#Users of NewCompiler

 The NewCompiler has been used in a number of projects: 

-  [ByteSurgeon](%base_url%/research/bytesurgeon) &mdash; Runtime Bytecode Transformation for Smalltalk
-  [ChangeBoxes](%base_url%/research/changeboxes) &mdash; Modeling Change as a first-class entity
-  [Reflectivity](%base_url%/research/reflectivity) &mdash; Persephone, Geppetto and the rest.
-  AOStASqueak &mdash; an experimental port of AOStA to Squeak
-  Babel - Scripting Language Experiments for Squeak
-  [ThothCompiler](http://smalltalkthoughts.blogspot.com/2009/09/introducing-thothcompiler.html) &mdash; Enabling the Parser of the NewCompiler to be used in an up-to-date (10/2009) Pharo image.
-  [Helvetia](%base_url%/research/helvetia) &mdash; Context Specific Languages with Homogeneous Tool Integration

Ready to run image (Version 290): [NewCompiler.zip](%base_url%/download/newcompiler/NewCompiler.zip) 

To install the code in an existing image (Pharo 0.1, #10244): 

- Load package *NewCompilerLoader* from [ SqueakSource](http://www.squeaksource.com/NewCompiler.html) 
- install using *NewCompilerLoader new loadPackages* or, alternatively, load all required packages by hand: 
- Load package *SmaCC* from [ SqueakSource](http://www.squeaksource.com/SmaccDevelopment.html) 
- Load package *AST* from [ SqueakSource](http://www.squeaksource.com/AST.html) 
- Load package *NewParser* from [ SqueakSource](http://www.squeaksource.com/AST.html) 
- Load package *NewCompiler* from [ SqueakSource](http://www.squeaksource.com/NewCompiler.html) 
- recompile the image using class *Recompiler*

#Contact

- Main Contact: [Marcus Denker](http://www.iam.unibe.ch/~denker) 
- The NewCompiler Mailinglist is newcompiler@lists.squeakfoundation.org. You can use the <a href= "http://lists.squeakfoundation.org/mailman/listinfo/newcompiler">Mailman web interface</a> to subscribe. 
- For reporting bugs, please use [the bug tracker](http://code.google.com/p/squeaknewcompiler/issues/list).
-  People: Anthony Hannan (original Author), Marcus Denker, Mathieu Suen, Jorge Ressia... 
