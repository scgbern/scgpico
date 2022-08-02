---
Title: Interactive Test Coverage Assistance
---
#Interactive Test Coverage Assistance
#Moto
Tests help developers to ensure that the functionality is there. Let's help developers to ensure that their functionality has tests.

#Project Idea
Unit tests allow to reduce the time required for defect defection, which in a longer run reduces the cost the development of a certain software. Never the less writing tests is a non-trivial activity which does not impact the software functionality directly and so big parts of code are left non-tested.
Code coverage tools provide a nice overview about which parts of software are tested. But this still requires significant motivation of a developer to dig deeper and introduce missing tests.
The vision of this project is to provide a testing assistant that will help you to test your code, and test your code with the available tests.

#Roadmap

-  **Test linkage**: link tests with the methods that they are testing. Level of precision may wary: existing coverage tool can be reused as well as new algorithms based on simple heuristics. Goal: be able to say which tests are related to an entity.
-  **Guiding assistance**: communicate with user if tests are missing for the method, help to create some.
-  **Test inference**: infer possible tests out of run time.
-  **Testing assistance**: if an entity is changed, run tests and say whether the change didn't break anything.
-  **Conformance to external properties framework**: at the moment there is already a framework for providing external properties (such as code quality or bugs) information about a source code. By reusing it for this task we will be able to say which features are common for external properties and which ones are specific for this task.

#Environment and Impact
This project will be done in [Pharo](http://pharo.org), a dynamic object-oriented programming language and environment. Because of reflectivity of the language it will not be hard to perform such tasks as on-the-go method creation or execution analysis and will allow to focus on the testing assistance approach itself.
The IDE already has a way of facilitating test driven development by helping to create missing methods and fix a wrong code during runtime. This project can be a nice continuation of Pharo vision and may be even integrated into its core distribution.

This project represents a big idea that can be approached by both bachelor and master students and can serve as a source of smaller tasks for seminar projects as well. 

#Contact
[Yuriy Tymchuk](%base_url%/staff/YuriyTymchuk) and [Claudio Corrodi](%base_url%/staff/Corrodi)
