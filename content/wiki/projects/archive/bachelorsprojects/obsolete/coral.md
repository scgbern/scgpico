---
Title: Coral &mdash; scripting with Smalltalk
---
#Coral &mdash; scripting with Smalltalk
Dynamic object-oriented languages, like Ruby, Python, Groovy and many others, are great for writing compact "scripts" that exploit huge libraries to perform simple maintenance tasks, but they suffer from the lack of an interactive development environment that supports live interaction with the running application.

[Pharo Smalltalk](http://www.pharo-project.org/home) offers just such an environment, but it is not very suitable for scripting, since Smalltalk applications only live in the image. [GNU Smalltalk](http://smalltalk.gnu.org/) offers the possibility to script Smalltalk code, but the development environment is not at the same level as full-fledged Smalltalks.

[Coral](http://www.squeaksource.com/Coral.html) is a project to support scripting with Smalltalk without abandoning the IDE. A first simple prototype exists, but much functionality is missing. This bachelors project would address these shortcomings.

#To do items

-  clean up dead code
-  support for #! notation
-  installer for #! script runner
-  passing arguments to scripts
-  pipes and filters (stdin and stdout)
-  redirecting Smalltalk errors to stderr
-  evaluating external Unix commands (cf. backtick commands)
-  multi-platform support (installers?)
-  debug mode for scripts (escape to image)
-  mechanism to specify required packages for scripts
-  local cache for required packages
-  environment to develop and debug scripts (extend class browser?)
-  demo scripts
-  tutorial
