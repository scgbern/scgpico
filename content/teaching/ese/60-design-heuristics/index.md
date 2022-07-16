---
Title: 60 design heuristics
---
#60 design heuristics
This is a Summary of the heuristics in the [OO Design Heuristics](http://www.amazon.com/Object-Oriented-Design-Heuristics-Arthur-Riel/dp/020163385X) by Arthur Riel.

#(A) Classes and Objects


- All data should be hidden within its class 
- Users of a class must be dependent on its public interface, but a class should not be dependent on its users. 
- Minimize the number of messages in the protocol of a class (protocol of a class means the set of messages to which an instance of the class can respond) 
- Implement a minimal public interface that all classes understand 
- Do not put implementation details such as common-code private functions into the public interface of a class 
- Do not clutter the public interface of a class with things that users of that class are not able to use or are not interested in using. 
- Classes should only exhibit nil or export coupling with other classes, that is, a class should only use operations in the public interface of another class or have nothing to do with that class. 
- A class should capture one and only one key abstraction 
- Keep related data and behaviour in one place. 
- Spin off nonrelated information into another class (that is, non-communicating behaviour) 
- Be sure the abstractions that you model are classes and not simply the roles objects play

#(B) Topologies of Action-Oriented Versus Object-Oriented Applications
12. Distribute system intelligence horizontally as uniformly as possible, that is the top level classes in a design should share the work uniformly. 

13. Do not create god classes or god objects in your system. Be very suspicious of a class whose name contains DRIVER, MANGER, SYSTEM, SUBSYSTEM, etc. 

14. Beware of classes that have many accessor methods defined in their interface. Having many implies that related data and behaviour are not being kept in one place. 

15. Beware of classes that have too much non-communicating behaviour, that is, methods that operate on a proper subset of the data members of a class. God classes often exhibit a great deal of non-communicating behaviour. 

16. In applications that consist of an object oriented model interacting with a user interface, the model should never be dependent on the interface. The interface should be dependent on the model. 

17. Model the real world whenever possible. (This heuristic is often violated for reasons of system intelligence distribution, avoidance of god classes, and the keeping of related data and behaviour in one place.) 

18. Eliminate irrelevant classes from your design. 

19. Eliminate classes that are outside the system. 

20. Do not turn an operation into a class. Be suspicious of any class whose name is a verb or is derived from a verb, especially those which have only one piece of meaningful behaviour. Ask if that piece of meaningful behaviour needs to be migrated to some existing or undiscovered class. 

21. Agent classes are often placed in the analysis model of an application. During design time, many agents are found to be irrelevant and should be removed.

#(C ) Relationships Between Classes and Objects
22. Minimize the number of classes with which another class collaborates. 

23. Minimize the number of message sends between a class and its collaborator. 

24. Minimize the amount of collaboration between a class and its collaborator, that is, the number of different messages sent 

25. Minimize fanout in a class, that is the product of the number of messages defined by the class and the messages they send 

26. If a class contains objects of another class, then the containing class should be sending messages to the contained objects, that is, the containment relationship should always imply a <> relationship. 

27. Most of the methods defined In a class should be using most of the data members most of the time. 

28. Classes should not contain more objects than a developer can fit in his or her short-term memory. A favourite value for this number is six. 

29. Distribute system intelligence vertically down narrow and deep containment hierarchies. 

30. When implementing semantic constraints, it is best to implement them in terms of the class definition. Often this will lead to a proliferation of classes, in which case, the constraint must be implemented in the behaviour of the class - usually but not necessarily, in the constructor. 

31. When implementing semantic constraints in the constructor of a class, place the constraint test in the constructor as far down in a containment hierarchy as the domain allows. 

32. The semantic information on which a constraint is based is best placed in a central, third party object when that information is volatile. 

33. The semantic information on which a constraint is based is best decentralized among the classes involved in the constraint when that information is stable. 

34. A class must know what it contains, but should never know who contains it. 

35. Objects that share lexical scope - those contained in the same containing class - should not have <> relationship between them.

#(D) Inheritance Relationship
36. Inheritance should be used only to model a specialization hierarchy 

37. Derived classes must have knowledge of their base class by definition, but base classes should not know anything about their derived classes 

38. All data in a base class should be private; do not use protected data. 

39. In theory, inheritance hierarchies should be deep - the deeper the better 

40. In practice, inheritance hierarchies should be no deeper than an average person can keep in his or her short term memory. A popular value for this is six. 

41. All abstract classes must be base classes. 

42. All base classes must be abstract classes. 

43. Factor the commonality of data, behaviour, and/or interface, as high as possible in the inheritance hierarchy. 

44. If two or more classes share only common data (no common behaviour), then that common data should be placed in a class that will be contained by each sharing class 

45. If two or more classes have common data and behaviour (that is, methods), then those classes should each inherit from a common base class that captures those data and methods. 

46. Explicit case analysis on the type of an object is usually an error. The designer should use polymorphism in most of these cases. 

47. Explicit case analysis on the value of an attribute is often an error. The class should be decomposed into an inheritance hierarchy, where each value of the attribute is transformed into a derived class. 

48. Do not model the dynamic semantics of a class through the use of an inheritance relationship. An attempt to model dynamic semantics with a static semantic relationship will lead to a toggling of types at run time. 

49. Do not turn objects of a class into derived classes of the class. Be very suspicious of any derived class for which there is only one instance. 

50. If you think you need to create new classes at run time, take a step back and realize that what you are trying to create are objects. Now generalize these objects into a new class. 

51. It should be illegal for a derived class to override a base class method with a NOP method, that is, a method that does nothing. 

52. Do not confuse optional containment with the need for inheritance. Modeling optional containment with inheritance will lead to a proliferation of classes. 

53. When building an inheritance hierarchy, try to construct reusable frameworks rather than reusable components.

#(E) Multiple Inheritance
54. If you have an example of multiple inheritance in your design, assume you have made a mistake and then prove otherwise. 

55. Whenever there is inheritance in an OO design, ask yourself two questions:
(a) Am I a special type of the thing from which I am inheriting?
(b) Is the thing from which I am inheriting part of me?


56. Whenever you have found a multiple inheritance relationship in an OO design, be sure that no base class is actually a derived class of another base class.

#(F) Association Relationship
57. When given a choice in an OO design between a containment and association, choose the containment relationship.

#(G) Class-Specific Data and Behaviour
58. Do not use global data or functions to perform bookkeeping information on the objects of a class. Class variables or methods should be used instead.

#(H) Physical OO Design
59. OO designers should not allow physical design criteria to corrupt their logical designs. However, physical design criteria often are used in the decision-making process at logical design time. 

60. Do not change the state of an object without going through its public interface.
