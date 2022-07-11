---
Title: Test code vs. production code
---

Testing is an integral part of software development. There has been a growing awareness on unit testing&mdash;and testing in general. **Test and production code differ in nature an intent though**. For instance, [code duplication is bad in production code, but fine in test code](http://stackoverflow.com/questions/3435809/is-it-ok-to-copy-paste-unit-tests-when-the-logic-is-basically-the-same/3436062#3436062); or  [production code can afford some complexity to be generic, but test code should be simple and specific](>http://stackoverflow.com/questions/2874296/reflection-in-unit-tests-for-checking-code-coverage/2904148#2904148). Test and production code coexist in most project, yet programming language have little support to distinguish between the two.

To avoid scattering test code all around the code base, dependency injection has been adopted by many practitioners in industry. It is however on a very partial solution; dependency injection frameworks are general purpose, and more specific solutions would be welcome if their usage is solely to ease switching between test and production code. 

A few research questions that I would like to tackle are:


-  How would a programming language with built-in support to differentiate between test and production code look like? Could a type system that support "variants" help in this case?
-  How do people use dependency injection framework in practice w.r.t. unit testing, and how well does it support unit testing? Rather than relying on dependency injection, how can we promote the mere [dependency inversion](http://en.wikipedia.org/wiki/Dependency_inversion_principle) principle (e.g. with dedicated refactoring in IDE)
-  How do developers unit test time-dependent behavior (or other [environment-dependent](http://stackoverflow.com/questions/2433461/test-to-identify-your-development-environment/2433523#2433523)), which is usually a complicated mater, either because of concurrency, or configurable time interval? 
-  How do people use global data (global hook, etc.), and what is their relationship with testing? 
-  Some system can only be tested/debugged on site. That means the software to test must be deployed next to the current version of the production software, so as to have the similar environment & configuration. How easy is it to do so? How can we isolate&mdash;or switch between&mdash;production and test system at run-time?
