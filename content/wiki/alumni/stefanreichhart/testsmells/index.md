---
Title: TestSmells
---
#TestSmells
TestLint is a tool to automatically detect design flaws in the test-code a.k.a TestSmells: "what is good, what is bad"

---

#Downloads

-  All-inclusive [Squeak-Image](http://www.iam.unibe.ch/~reichhar/files) (Testing-xxxx-xx-xx.zip). Everything inside this image is supposed to be working, but sources are probably not up-to-date.
-  Public MC packages on [SqueakSource](http://www.squeaksource.com) (SR): "TestSmells"
-  Dynamic analysis requires ByteSurgeon to be installed.


---

#Overview about TestSmells

-  [TestSmells in a Nutshell](%base_url%/wiki/alumni/stefanreichhart/testsmells/testsmellsinanutshell) - highly compressed overview about TestSmells (1)
-  [Simple Statistics](%base_url%/wiki/alumni/stefanreichhart/testsmells/simplestatistics)


---

# Features of the current prototype:

-  Rules for static and dynamic Analysis
	-  Approx. 20 very well-working rules
	-  Many more rules, yet unstable or too unprecise, ...

-  Very small, flexible and extendable kernel/model
-  Several browsers to access/browse the smelling nodes
-  (beta) Visualizations using Mondrian
-  Annotation of false-positives (not like in Lint yet)

# Bugs:

-  Slow, redundant, fuzzy, unstable  rules
-  Categorization
-  Bad/slow Cache
-  inconsistent rules (some return a reason, others don't, ...)

# Planned for future versions:

-  Test-Framework independence
-  Pragmas for annotations - like in Lint
-  Enhancing the runtime - scope/context aware
-  Rules
	-  Duplication / Multiplication &mdash;> port Smalldude from VW to Squeak 
	-  Behavior block detection
	-  Eager tests
	-  Test coupling

-  User Interface
-  Notifications / Event System


---

#References

-  (1) My Master Thesis :)
-  (2) Gerard Meszaros - "xUnit Test Patterns, Refactoring Test Code"
-  (3) Bart Van Rompaey, Bart Du Bois and Serge Demeyer - "Characterizing the Relative Significance of a Test Smell"
-  (4) Magiel Bruntink, Arie van Deursen - "Predicting Class Testability using Object-Oriented Metrics"
-  (5) Arie van Deusen, Leon Moonen, Alex van de Bergh, Gerard Kok - "Refactoring Test Code"
-  (6) Radu Marinescu - "Detection Strategies: Metrics-Based Rules for Detecting Design Flaws"
-  (7) Michael D. Ernst - "Static and dynamic analysis: synergy and duality"

# Web References

-  [http://www.Silvermark.org](http://www.Silvermark.org) - Test Mentor / Presentation / Demo
-  [http://www.parasoft.com](http://www.parasoft.com) - JTest, CodeSniffer
 
