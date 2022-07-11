---
Title: Polymorphic call-site comprehension
---

Polymorphism is an important and widely used object oriented concept, supported along with inheritance. We can invoke methods based on the assumed type of the receiver, while during run-time the receiver can store the reference of multiple types.

While a selector can be implemented hundreds of times within the inheritance hierarchy, we have discovered that 75% of polymorphic call-sites have up to six possible method candidates. The question is how much are those implementations different in a semantic way. For example, the following two methods

``` float surface(){ return a*b;} // method that calculates surface
                               // in a Rectangular class
 float surface(){ return r*r*pi; } //method that calculates surface
				    // in a Circle class
```

aren't clones, but they both calculate the surface of a mathematical figure.

The aim of this project is to analyze the source code of software projects, and find the percentage of polymorphic call-sites where the semantic of all possible invoked methods is the same.

Contact: [Nevena Milojković](%base_url%/staff/Milojkovic)
