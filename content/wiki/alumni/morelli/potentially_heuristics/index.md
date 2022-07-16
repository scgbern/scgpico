---
Title: Potential heuristics
---
#Potential heuristics
#algo for statically polymorphism method guessing:


-  get the methods with the same name within a hierarchy-tree
-  get the names of classes within this tree if there are more than one method with the same signature
-  for all these classes, get the ones which are instantiated

#further heuristics for instance-variables:

Cases:

-  A a = new A()	if A has subclasses
-  A b = new B()	if B has subclasses
-  Downcasting (equal to A a = new B())

Example:
	
A a = new A();	
B b = new B();
If (b instanceOf A)
a = (A)b;
