---
Title: New Refactoring Engine
---
#New Refactoring Engine
The first refactoring tool was the [Smalltalk Refactoring Browser](http://www.refactory.com/RefactoringBrowser/index.html). Even-though the Smalltalk refactoring engine has not been improved for a long time, it is still one of the most powerful and full-featured engines available. However the current implementation has some major drawbacks such as that it doesn't properly model white-spaces in the code and that its model doesn't go beyond classes and methods.

The goal of this master project is to do a state of the art implementation of a refactoring engine in [Squeak](http://www.squeak.org) Smalltalk. The new engine should provide the existing features, plus additional functionality that makes it superior to all existing refactoring frameworks:


-  Model packages, classes, traits, variables, methods (AST) using an advanced [CodeModel](http://monticello.wiresong.ca/ob/)
-  Provide a [rewrite tool](http://www.refactory.com/RefactoringBrowser/Rewrite.html) that preserves formatting of the source-code as much as possible
-  Provide a mechanism to scope changes to the Smalltalk image or any model in memory
-  Provide the standard refactorings tools as services to [OmniBrowser](http://www.wiresong.ca/OmniBrowser/)
-  Apply changes to the running system atomically

Contact: [Lukas Renggli](%base_url%/staff/lukasrenggli)
