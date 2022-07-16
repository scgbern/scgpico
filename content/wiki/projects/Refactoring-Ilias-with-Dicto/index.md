---
Title: Refactoring Ilias with Dicto
---
#Refactoring Ilias with Dicto
#Objective
Migrate the [Ilias](http://www.ilias.de) e-learning platform towards a new architecture using [Dicto](/dicto/). 

#Abstract
When code bases grow there is need for extended architectural structures bringing with them changes in existing code. In any open source software it is hard to monitor whether this newly introduced architecture is being implemented in all parts of the software. New contributors or even experienced ones may add code that does not respect the new guidelines. Furthermore it is hard to identify which parts of the software the new architecture is already implemented and which parts need to be revisited, especially if done so by hand. Later on effort needs to be spent to keep the architecture decided on.
This paper describes a case study that follows the approach of introducing automated architectural monitoring to the development process. The approach contains the translation of a new architecture into automatically testable rules and then focuses on the violations of these rules. The contributors get feedback about all existing violations and especially on added or removed violations on each contribution. The findings illustrate the possible decline in architectural violations and the change in the gap between architectural documentation and actual implementation.

#People

- [Oskar Truffer](%base_url%/wiki/alumni/OskarTruffer)
- [Andrea Caracciolo](%base_url%/staff/Caracciolo)
