---
Title: Notes
---
#Notes
... for the [Trait-based Language International Workshop](%base_url%/wiki/events/traitbasedlanguageinternationalworkshop)

# Philip reports on his work on introducing traits in miniJava

-  Introduces ThisClass in Trait
-  How to express requires? Compiler inferred requirements and optionally you make them explicit
-  Requirements are best expressed structurally
-  Traits are not types

# Martin presented Scala

-  Object-oriented and functional programming
-  Static type system
-  Uniform object model 
-  Single Inheritance
-  External, retroactive extensibility vai views (classboxes)
-  Symmetric mixins (S mix A mix B = S mix B mix A)
	-  S superclass of A and B
	-  Concrete overrides abstract
	-  Concrete in A overrides in S
	-  Concrete in A and B is a conflict
	-  super[Traitable] to invoke overriden method
	-  controls the overriden of method using "override" keywords in traits to specify when the method is overriden


# Oscar presented Featherweight Traits

-  currently no super
-  traits as types
-  exclusion of used method -> requirements
-  exclusion of unused method 

# Jacques presented Traits as Components?

-  Components as templates
-  Components as black-box
