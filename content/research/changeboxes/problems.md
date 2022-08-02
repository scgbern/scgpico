---
Title: Problems
---
#Problems
#Open Problems

-  How can variables that contain classes perfom a lookup for the current version of the class 
-  What happens on initializing/unloading classes?
-  Categorizing of classes/methods is 'view only', i.e. as Categorizer is was built at times when even Squeak was not object oriented yet, it would need some serious refactoring before being able to dispatch categories. For now, only the most used client methods of Categorizer are adapted. 
-  Anonymous classes (directly created by Behavior new) are not supported.
-  How can the kernel, tools or even the ChangeBoxes code be developped using ChangeBoxes? A new scope for developping, the original scope for actually executing code. Possible or inner contradiction of Squeak? So far, modifying ChangeBox Core classes requires copying, changing all references to the copies, modifying the core class, changing references back and removing the copies again.
