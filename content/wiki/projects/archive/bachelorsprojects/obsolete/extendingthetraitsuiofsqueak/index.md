---
Title: Extending the Traits UI of Squeak
---

Traits are new in the version 3.9 of Squeak but are still lacking a sophisticated user interface. The goal of this project would be to extend an early version of a traits browser which is based on the OmniBrowser framework. Ideas:


-  in the browser display whether a method is obtained from a trait or not
-  if it is from a trait, show in which trait, and provide navigation facilities. Same for local methods that take precedence over a trait method
-  make other OmniBrowser tools Traits aware. E.g., sender and implementor windows.
-  add refactorings like "extract trait from class" or "inline trait methods"
-  combine the browser with the requires browser (an algorithm by Nathanael Schärli which computes all messages of a class that are self-sent but not implemented)
-  drag-n-drop support to move methods from a class to a trait)
-  ...

Links:

-  [Traits](%base_url%/research/traits)
-  [Squeak](http://www.squeak.org)
