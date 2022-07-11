---
Title: TestSmells in a Nutshell
---

#(Test)Code Smells


-  <b>Conditional Test Logic</b>
	-  ?: conditionals and loops in test-code
	-  leads to: <i>Buggy/Obscure/Fragile Tests</i>, maybe unrepeatable/non-deterministic tests, complex code, hard to understand
	-  fixed by: refactoring tests, <i>Guard Assertions</i>, delegation, Mock Object, Doubles, Stubs



-  <b>Hard to test code</b>
	-  caused by: highly coupled code, asynchronous code
	-  leads to: manual testing



-  <b>Hardcoded Test Data</b> 
	-  ?: magical/suspect numbers and strings
	-  leads to: <i>Obscure Tests</i>, hard to extract behavior/documentation
	-  fixed by: fixtures, creation mthods



-  <b>Obscure Test</b>
	-  ?: long test, much logic
	-  caused by: not spending enough time in designing tests, <i>Eager Tests</i>, <i>General/Shared Fixture</i>, <i>Mystery Guests</i> (external resources), <i>Verbose Test</i>, 
	-  leads to: <i>Buggy/Fragile Tests</i>, increased maintenance costs, debugging due bad bug localization
	-  fixed by: splitting up the test into smaller units, delegation



-  <b>Test Code Duplication</b>
	-  caused by: copy-past, not reusing code or bad test design
	-  leads to: <i>Obscure/Fragile Tests</i>, increased maintenance costs
	-  fixed by: <i>Custom Assertions</i>, <i>Verification Method</i>, generic reusable code, test inheritance, <i>Expected Objects</i> - using objects instead of fields, delegation



-  <b>Test Logic in Production</b>
	-  caused by: <i>Test Hooks</i>, code for tests only, test dependencies, equality pollution
	-  leads to: hidden bugs
	-  fixed by: special subclasses exposing behavior, utilities, clean up organisation/modularisation, custom assertions


#Behavior Smells


-  <b>Assertion Roulette</b>
	-  ?: which assertion caused the failure -> localization
	-  caused by: <i>Eager Tests</i>,
	-  leads to: debugging
	-  fixed by: splitting up the test



-  <b>Erratic Test</b>
	- ?: determinism, sometimes tests pass, sometimes not
	-  caused by: <i>Interacting Tests/Suites</i>, <i>Shared Fixtures</i>, execution order of tests, <i>Lonely Test</i>, <i>Resource Leakage/Optimism</i>, <i>Unrepeatable Test</i>
	-  fixed by: fresh fixtures



-  <b>Fragile Test</b>


-  <b>Frequent Debugging</b>
	-  caused by: lack of defect localization
	-  leads to: manual testing, long debugging sessions
	-  fixed by: test automation, small tests



-  <b>Manual Intervention</b>
	-  ?: test need user interaction/input
	-  caused by: manual fixtures/setup, event injection
	-  leads to: unrepeatable tests
	-  fixed by: simulate human interaction



-  <b>Slow Tests</b>
	-  caused by: <i>Obscure Tests</i>, only high level tests, shared Fixtures,
	-  leads to: decreased productivity
	-  fixed by: split up in smaller parts


#Sensitivity Smells


-  <b>Behavior Sensitivity</b>
	-  ?: test A suddenly fails after B was modified
	-  caused by: introducing a new feature, bug 'fixed', setup modified



-  <b>Context Sensitivity</b>
	-  ?: test A suddenly fails after the state of some other components has been changed
	-  caused by: time/date dependencies, dependencies on other components
	-  leads to: non-deterministic tests



-  <b>Data Sensitivity</b>
	-  ?: test A suddenly fails after the data has been changed
	-  caused by: data require new functionality, new data, data removed
	-  leads to: increased effort in maintaining tests/data



-  <b>Interface Sensitivity</b>
	-  ?: test A suddenly fails after the interface of the SUT has been modifies
	-  caused by: changed application/API
	-  leads to: no refactorings ('don't touch it')
	-  fixed by: encapsulate the API/SUT behavior


#Project Smells


-  <b>Buggy Tests</b>
	-  ?: tests fail although they shouldn't and vice versa
	-  caused by: <i>Fragile/Flexible/Obscure Tests</i>, hard to test code, too much logic in the test, source changes too fast
	-  leads to: <i>Fragile Tests</i> and high maintenance costs
	-  fixed by: write test first (->requirements), refactor legacy code, learn testing



-  <b>Developers not writing Tests</b>
	-  caused by: missing time, schedule, hard to test code, wrong automation strategy
	-  leads to: <i>Fragile/Obscure Tests</i>, manual debugging/testing



-  <b> High Test Maintenance cost</b>
	-  ?: it takes long to introduce new behavior
	-  caused by: <i>Fragile/Obscure Test</i>, spending much time with debugging, manual testing, badly test strategy, missing test automation
	-  fixed by: refactoring tests before continuing



-  <b>Production Bugs</b>
	-  ?: too many tests fail, many bugs found in  source
	-  caused by: untested code, unfrequently run tests, not enough tests, lost/missing tests



-  <b>Productivity Smell</b>
	-  caused by: frequent debugging, missing automation, slow tests

