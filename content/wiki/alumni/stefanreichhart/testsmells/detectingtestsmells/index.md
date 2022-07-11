---
Title: Detecting TestSmells
---

<b>Conditional Test Logic</b> (metric, simple)

-  parse testcases to detect conditionals and loops
-  parse non-testcases (fixtures, utilities) in TestClass for conditionals and loops

<b>Hard to test code</b>

-  could be detected by Christo -> code having no coverage, however this is no guarantee for "hard to test code", just a pointer to something missing

<b>Hardcoded Test Data</b> (metric, simple)

-  scan testCases for numerics, strings, symbols and characters
	-  -> primitive exposed behavior/state
	-  -> broken encapsulation
	-  -> missing OO


<b>Obscure Test</b> (metric, simple, many possibilities ?)

-  parse the testcase and apply different metrics on the source. Question: how valuable are they ?
	-  absoluteLength ( test-code )
	-  assertion-code / non-assertion-code (statement or token based)
	-  num ( testcases / non-testcases ) 

-  too many source-methods covered by the test-code -> eager test or a more abstract scenario
-  long test, but doesn't cover a lot -> some primitive/simpler tests missing, fixture code in the test, missing code reuse

<b>Test Code Duplication</b> (metric, simple)

-  similarity analysis, levensthein (?), intelligent hash function (?)
-  detect accessors being used for assertions -> field access instead of object comparision
-  between classes -> can this be realized -> efficiency ?
-  system supervision -> detect when a user is copy-pasting code from/to a testcase

<font color=red><b>Test Logic in Production</b></font> (dynamic)

<b>Assertion Roulette</b> (dynamic)

-  extend sunit in a way that a testcase knows which assertions failed -> better localization
-  keep track about 'permamently' failing tests (history how they develop) (?)

<font color=red><b>Erratic Test</b></font> (dynamic)

<font color=red><b>Fragile Test</b></font>

<b>Frequent Debugging</b>

-  system supervision for user debugging code, what code, timeintervals, ...

<b>Manual Intervention</b> (dynamic)

-  detect execution halts/resumes for user interactions/events

<b>Slow Tests</b> (env)

-  profile tests and save how long a test need for execution, keep a history (?)
	-  -> how often does the user execute such tests
	-  -> are tests raraly executed slow tests ? ...


<font color=red>
<b>Behavior Sensitivity</b>
<b>Context Sensitivity</b>
<b>Data Sensitivity</b>
<b>Interface Sensitivity</b>
</font>

<b>Buggy Tests</b>

-  consequence of a fragile/obscure/flexible test

<b>Developers not writing Tests</b> (metric)

-  just scan the working sets for tests

<b> High Test Maintenance cost</b> (env)

-  if the developer spends alot of time in changing testcode (instead of adding new)
	-  detect different kinds of changes: sth added/removed, code fixed ->still very similar after accepting it, ...


<b>Production Bugs</b> (env)

-  frequency of test runs, coverage, num of tests, ....

<b>Productivity Smell</b> (env)

-  how often does the user use the debugger (?) ...


---

#Optionals (not very serious)

<b>Naming Conventions</b>

-  parse the working set for source/test associations
	-  class A should have a test called ATest, better: ATest should have a class called A -> easier documentation/organization

-  parse for test-selectors containing numbers (e.g. test1, test2, test3, ...) -> not good for documentation

<b>Test Organization</b>

-  intuitive category names
	-  class A is in category Cat, so ATest should be in Cat-Tests

-  category consistency
	-  classes A and B are in Cat, then ATest and BTest should be in the same category, too

-  separation: A and ATest should not be in the same category

<b>Weak/organizational coverage</b>

-  associations: each class A should have a test named ATest, vice versa
