---
Title: JExample
---

Active context can be used to snapshot object and avoid cloning. Perfect for JExample-like unit tests:

```testSuiteFailCtx

	| queue  |
	
	self doSuite: [
		queue := self testCreation.
		queue := self testAdd: queue.
		queue := self testAdd2: queue.
	
		TestContext do: [
			queue := self testDelete2: queue.
			queue := self testFail: queue.
			queue := self testDelete1: queue.
		].

		TestContext do: [
			queue := self testClear: queue.
		].
	].
```

Running the test suite prints something like:

```Test: testCreation
Test: testCreation
Test: testAdd:
Test: testAdd2:
Test: testDelete2:
Test: testFail:
Failure occured
Test: testClear:
Test suite [success=6, failure=1]

```
The context is a regular class, so in this case we also override the do: method to deal with faulty tests.

```TestContext>>do: aBlock

	[ ^ super do: aBlock ] on: Error do: [ Transcript show: 'Failure occured'; cr. ].
```

```TestContext>>transitionKeysFrom: instVarFrom keysTo: instVarTo

super transitionKeysFrom: instVarFrom  keysTo: instVarTo .

TestContext>>transitionKeysTo: instVarTo keysFrom: instVarFrom

instVarFrom at: 'class' put: (instVarTo at: 'class').
```
