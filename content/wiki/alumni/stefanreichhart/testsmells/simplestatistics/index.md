---
Title: Simple Statistics
---
#Simple Statistics
updated: October 14, 2006


-  TestSmells/TestLint still runs too slow -> optimize run time


-  Aconcagua (supposed to be very "good") - collecting results of all rules, 1 afternoon ;(  ;(  &mdash;> smells and interesting things:
	-  some untested behaviors sent/used
	-  some behaviors untested (no coverage, no tests)
	-  some behaviors implemented, but never/nowhere used
	-  some behaviors only used in tests but not elsewhere (this is no problem for a system extension)
	-  lots of cascaded test assertions (complexity, debug-ability)
	-  a few "too" long tests (eager)
	-  tremendous amount of magic literals (encapsulation break)
	-  some dangerous literal conversions and comparisions (encapsulation break)
	-  some non-effictive object comparisions (e.g. 1 = 1)
	-  1 hidden-shared fixture (shared fixture, but no (correct) setup/teardown)
	-  no strict testing conventions (naming, .......)
	-  lots of enumerations in tests (complexity, debug-ability)
	-  most parts probably not done by TDD (fuzzy)



-  Network (well ... see [Squeak Graveyard](%base_url%/wiki/alumni/stefanreichhart/squeakgraveyard)) - collecting results of all (except 1) rules, <5 min &mdash;> smells and interesting things:
	-  only a very few tests, poor coverage, most behaviors untested
	-  one early returning test (e.g. "^self" instead of running assertions)
	-  some enumerations (complexity, debug-ability)
	-  lots of equivalent tests ( -> partial ordering / coverage)
	-  2 hidden-shared fixtures (shared fixture, but no (correct) setup/teardown)
	-  tremendous amount of  literal conversions and comparisions (-> can be expected as Network is quite lowlevel, encapsulation break)
	-  some logic operations in tests (ifTrue / ifFalse / ..., repeatability)
	-  tremendous amount of magic literals ( -> can be expected as Network is quite lowlevel, encapsulation break)
	-  rather complex and long tests with lots of comments (complexity, readability, documetation)
	-  1 outcommented test code, but wouldn't break if comment removed - lucky ;)
	-  poor names for test selectors (e.g. test1, test2, test3, ...)
	-  much behavior only used for tests
	-  not done in TDD (fuzzy)



-  MSE-Exporter - collecting results of all (except 1) rule &mdash;> smells and interesting things:
	-  some enumerations (complexity, debug-ability)
	-  some behaviors only used in tests but not elsewhere (this is no problem for a system extension)
	-  1 non-effictive object comparisions (e.g. 1 = 1)
	-  many literal conversion/comparisions (encapsulation break)
	-  many magic literals
	-  some test-code put into comments
	-  1 outcommented test that would fail on comment removal - UPS ! -> MSEExportTest>#testClassCategory
	-  3 very long tests (size and runtime)
	-  1 test with too many comments (more comments than actual test code)
	-  2 classes with bad selector  names (complexity, readability, documetation)
	-  some behaviors implemented, but never/nowhere used
	-  some untested behaviors sent/used
	-  some behaviors untested (no coverage, no tests)



-  Intelligent Games
	-  tremendous amount of magic literals ( -> expected as part of the "game")
	-  some enumerations (complexity, debug-ability)
	-  some behaviors implemented, but never/nowhere used
	-  some untested behaviors sent/used
	-  some behaviors untested (no coverage, no tests)



- Nebraska
	-  only a very very few tests >  lots of behaviors untested (no coverage, no tests)
	-  some behaviors only used in tests but not elsewhere (this is no problem for a system extension)
	-  some magic literals
	-  1 organization convention ignored
	-  2 bad names for testselectors
	-   ? none of the fixtures could not be analysed -> instrumentation error ? 



-  Files / Filesystem
	-  many tests returning "too early" (->not all assertsions/statements executed -> ^self/^nil/.... )
	-  many logic operators (-> droping assertions -> ifTrue: / ifFalse: / ...)
	-  many magic literal (expected)
	-  2 mystery guests (access to an external file)
	-  tests contain rather complex than simple assertions
	-  3 tests with outcommented code
	-  organization convention ignored (almost everywhere, development was a bit sloppy ?)
	-  lot of comments in tests, 1 really really really big one (6 lines)
	-  one testclass does only have a teardown (that doesn't do what it is supposed to do) -> ok, but not really nice -> sideffects of tests



-  ICal
	-  1 method overrides the default perform-behavior of sunit
	-  some test-methods with outcommented code
	-  some test-methods with outcommented assertsions that would fail on comment removal - UPS !!! 
	-  1 testmethod is completely outcommented
	-  many enumerations (complexity, debug-ability)
	-  many missing tests
	-  at least 1 testclass having hidden shared fixtures (shared fixture, but no (correct) setup/teardown)
	-  1 class with a fixture not used enough (mostly unused)
	-  many literal conversions and comparisions
	-  tremendous amount of magic literals ( expected)
	-  4 testclasses with "too many" instance variables, only 2 of them have a too large fixture
	-  many testmethods not using the shared fixture (unbalanced use)
	-  2x organization convention ignored
	-  1 test-method with no assertions at all
	-  some compex assertions (nested, cascaded, block, ...)
	-  (unsure) 1 shared fixture instead on fresh fixtures
	-  many bad test-selector names
	-  unmanaged variables instead of using a fixture
	-  some behavior that is nowhere use nor tested
	-  2 shared fixtures with variables/behavior never used/accessed by any test-method



-  RoelTyper
	-  some long testcases / manual tests -> no test selectors
	-  some enumerations (complexity, debug-ability)
	-  many missing tests / bad coverage
	-  1 hidden-shared fixture (shared fixture, but no (correct) setup/teardown)
	-  some logic operators (-> droping assertions -> ifTrue: / ifFalse: / ...)
	-  tremendous amount of magic literals
	-  many bad test-selector names
	-  organization convention ignored



-  Cryptography
	-  >>> quite difficult to analyse as 'Cryptography' is not just one package but in fact a bundle of seperate packages - maybe a set for analysis would be appropriate, tests are not together with the code ...
	-  average coverage in generel: ASN (0%), Core (27%), DES (59%), DSA (23%), ELG (88%), MD4 (84%), MD5 (90%), RC4 (75%), RSA (32%), RiJ (51%), SHA (58%), SHA256 (94%), SSL (0%), X509 (0%), Base (62%) 
	-  only a very very few very abstract tests (~30 for such a big package !, bad: complexity, debug-ability, bug-tracking)
	-  all tests have magic literals (expected)
	-  some very long tests (runtime and code)
	-  1 test with literal conversion (encapsulation break)
	-  many enumerations (complexity, debug-ability)
	-  test-organization convention ignored
	-  many untested behaviors



-  Tsunami
	-  medium-good coverage
	-  some literal conversions
	-  organization convention ignored
	-  more abstract tests than primitive ones, inly a few tests



-  OpenDocument
	-  some enumerations
	-  tests with too many referenced / coupling
	-  many literal conversions
	-  rather complex tests with a lot of control logics
	-  tremendous amount of magic literals
	-  some very long tests
	-  organization convention ignored
	-  many tests have too many/large comments
	-  some tests with outcommented code and assertsions
	-  1 test with outcommented assertions that would fail on comment removal - UPS
	-  bad test selector names
	-  much untested behavior (sent)

