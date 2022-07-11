---
Title: AOP in Squeak
---

#Aspect-Oriented Programming in Squeak


---
###People

-  <strong>Supervision:</strong> [Marcus Denker](http://www.iam.unibe.ch/~denker/)
-  <strong>Developer:</strong> Anselm Strauss

###Code
[http://www.squeaksource.com/DynamicAspects](http://www.squeaksource.com/DynamicAspects)

###This Page

-  Validate [HTML](http://validator.w3.org/check?uri=http%3A%2F%2Fsmallwiki.unibe.ch%2Faopinsqueak), [CSS](http://jigsaw.w3.org/css-validator/validator?uri=http%3A%2F%2Fsmallwiki.unibe.ch%2Faopinsqueak)
-  [Check Links](http://validator.w3.org/checklink?uri=http%3A%2F%2Fsmallwiki.unibe.ch%2Faopinsqueak)
-  [Stylesheet](http://www.iam.unibe.ch/~scg/smallwiki/thepixelisdead/style.css)


---
##Web

-  [Reflectivity at IAM UniBE](%base_url%/research/reflectivity)
-  [Aspect-Oriented Software Development](http://www.aosd.net/)
-  [AspectJ](http://www.eclipse.org/aspectj/)
-  [Rewriting with the Refactoring Browser](http://www.refactory.com/RefactoringBrowser/Rewrite.html)
-  [Context-Oriented Programming at Uni Potsdam](http://www.swa.hpi.uni-potsdam.de/cop/)
-  [ALIA at Uni Darmstadt](http://www.st.informatik.tu-darmstadt.de/static/pages/projects/ALIA/alia.html)


---
##Todo

-  Cannot get "instead" working on methods <b> done </b>
-  Properly update colors in aspect browser <b> done </b>
-  Proper updating for: pointcut add/remove/change, advice add/remove <b>done</b>
-  How to distinguish AOP links from other Geppetto links? -> Use properties in links <b>done</b>
-  Selectively activate/install advices? <b> no </b>
-  Adapt aspects to code changes? <b> future work ... </b>
-  Automatically reinstall aspect on changes <b>done</b>
-  Optimize category/class/method filtering (use existing collections, don't create new ones) <b>done</b>
-  How to combine block conditions? (Non-literal creation of blocks?) <b>done</b>
-  Specify reifications for block conditions separately? <b>done</b>
-  Method execution pointcuts only apply where method is defined, not subclasses <b>done</b>
-  Pointcut/Advice visibility in aspect browser <b>done</b>
-  Aspect overview browser <b>future work</b>
-  Convenience stuff in DAPointcut constructors
-  Aspects are not properly installed after first loading of code <b>done</b>
-  Improve aspect browser button state <b>done</b>
-  Problems when installing aspects on empty methods (not when using directly gplinks) <b>done</b>
-  Executing method instead with operation reification does somehow produce inconsistency between reflective and compiled method (link is present in compiled method but not in reflective method) <b>done</b>
-  Updating: Aspects do not update when pointucts/advices are removed (difficult to check if method once really was a pointcut or advice), update on original code changes <b>untested</b>
-  Caching: make use of caches in DAPointcut and DAJoinPoint <b>future work</b>
-  Handle Seaside dependencies in examples <b>done</b>
-  Use pragmas instead of ugly advice names <b>done</b>
-  Easy "disabled by default" method <b>done</b>
-  Disable test aspects, install/uninstall during tests <b>partially</b>
-  Reread all source code comments, add important class comments on usage
-  Updating does not consider inheritance


---
##Caveats

-  Pointcuts and join points are always reevaluated
-  Meta classes are treated as having the same category as their instance
-  Implementation currently doesn't respect traits
-  Flow pointcut: after should always execute when before did (link conditions can change)
