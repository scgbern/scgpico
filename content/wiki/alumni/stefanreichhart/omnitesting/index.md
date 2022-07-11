---
Title: OmniTesting
---

OmniTesting is a package containing new browsers that very closely integrate unit testing with the development process. Any browser includes an additional button panel providing actions for testing, debugging and profiling. Tests a re marked with a colored bar - succedding ones with green, failures with orange/yellow and errors with red. Moreover the browsers include a "jump" actions which will open a browser showing you the test for the selected source (vice versa) and provide additional some additional queries for senders and implementors.

#Downloads

-  All-inclusive [Squeak-Image](http://www.iam.unibe.ch/~reichhar/files) (AllTesting-xxxx-xx-xx.zip). Everything inside this image is supposed to be working, but sources are probably not up-to-date.
-  Public MC packages on [SqueakSource](http://www.squeaksource.com) (SR): "OmniTesting2"


---

# <font color=blue>Most Recent Changes</font>

-  Test-First-Development 
	-  automatic source-code generation from the test(s) using dynamic analysis of test-runtime
	-  PROBLEMS NOT FIXED YET:
		-  in case of NonBooleanReceiverException -> step back undo last change, produce code with a boolean
		-  always return self in the stub except in the case above


-  actions refactored
-  tests (classes, methods, ....) get directly annotated with a color in the browser -> needs the latest BrowserSupport package
-  test history saving test-source version, time of test-run, result
-  browser adapted to the latest ob changes (update-mechanism)

#<font color=orange>Todo / Not Implemented Yet</font>

#<font color=red>Todo / Known Bugs</font>

-  weak performance for
	-  packages containig <b>many</b> tests -> query the test cache



---

#Ideas / New Inputs

-  user supervision = intelligent/responsive tests
	-  on each accept: store the relation of "testcode/code" added to the system. If the relation is near 0, the the user doesn't test enough (?)
	-  save order of interactions - does the developer test-first or code-first (?)
	-  save the last 5 suites (quick history), so the user can quickly execute them (?)

-  ...


---

#Done / Implemented Features

-  persistency of test results
	-  history for each test/result
	-  each testcase has its own testresult, results are composable
	-  cache is a simple singleton-dictionary

-  system notification
	-  a testresult is removed as soon as the source changes

-  colored bars to show the status of the test (rectangle)
-  new status morph
	-  faster, only updates if necessary
	-  shows only the relevant information
	-  shows all tests in the image if the browser is opend on no-node

-  deep testing removed (to slow)
-  additional actions added to the browser
-  ...
