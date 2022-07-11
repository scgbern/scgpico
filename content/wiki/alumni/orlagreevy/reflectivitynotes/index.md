---
Title: Reflectivity Notes
---

##Loading the Reflection into an existing image

These instructions are quite detailed as I am a newbie to the whole Squeak environment.


-  first install md (marcus denker) patches by 

     - downloadiing SqueakPatches-md.zip and copying this to your squeak directory 
     - load the patches in Squeak using the <b>filelist browser</b> to navigate to the patches directory, select the file <b>000-INSTALL.txt</b>. Then execute the contents of the file in the current image. This takes a while.
  ( this fixes some outstanding bugs in Squeak such as...)


-  Then install the ReflectivityLoader from the Repository using the Monticello Browser (you may need to add the repository) :
    MCHttpRepository
	location: 'http://www.squeaksource.com/Reflectivity'
	user: \''
	password: \''

   using the Monticello Browser 


-   execute in a workspace the following command:

    <b>ReflectivityLoader new loadStablePackages </b>

   to load the latest packages for reflectivity. This takes a few minutes to complete.

currently the following packages are loaded from the squeaksource repository:


-  Toothpick        (for logging)
-  ProcessSpecific
-  AST 
-  NewParser
-  RefactoringEngine 
-  SmaCC           - Smalltalk  compiler compiler
-  NewCompiler
-  Persephone  - the reflectivity model based on AST
-  Context
-  Gepetto2 
-  Colored  
-  Features - ( code to perform feature annotations - a feature annotation is a multivalued annotation)
-  Network-IRC  (An IRC Client to be used as a case study for feature annotation analysis)
 
Then system preferences are set by the loadPackages method of the ReflectivityLoader:

-  compileUseNewCompiler is set to true ( all new code will be compiled using the new compiler of reflectivity)
-  compileReflectiveMethods is set to true. This means that the metaobject ReflectiveMethod is generated for each method.

Then the following packages are loaded

-  JCompiledMethodsTest

  There is a preference set when loading the Reflectivity-packages that makes all new code to be compiled
   as ReflectiveMethods.
   
(one error occurs while executing this command: (1) Process should not be redefined. This error can be ignored by pressing 'proceed' in the debugger window.)


-  Recompile the image using the Persephone class PERcompiler by executing its class comment (press ? when browsing the class to see the class comment )

  <b>PERecompiler new inspect; recompileImage forkAt: 30</b>    

PERecompiler is a subclass of Recompiler.

This recompiles all class/instance methods in an image. Methods that cant be recompiled are added to the problemMethods and are not recompiled.


PERecompiler recompiles all the old code in the image. And it does it in a particular way: It generates ReflectiveMethod and CompiledMethod,
and then installs the compiledMethod in the classes, so there is no slowdown when executing old code.
( A ReflectiveMethod is the meta-object of the compiled method) 

##Taking the Reflection image

##General Notes


-  active is a toggle
