---
Title: How do I check which methods of my package are not covered by tests?
---
#How do I check which methods of my package are not covered by tests?
- **Q How do I check which methods of my package are not covered by tests?**
- **A** The Pharo SUnit Test Runner has a "Run Coverage button.
If you have an older image, just evaluate Installer ss project: 'Pharo'; install: 'SUnitGUI'.

The test runner will normally prompt you for the package to check for coverage. To eliminate this prompt, you can explicitly declare the package(s) to be covered on the class side of your test class as follows:
```
packageNamesUnderTest
	^ #('SplitJoin')
```
To indicate that a particular method should not be considered in the coverage check, simply add the annotation: &lt;ignoreForCoverage&gt;
To exclude whole classes within a package from consideration for coverage, define a class side method on your test class called classNamesNotUnderTest:
```
classNamesNotUnderTest
	^ #('GUI' 'README')
```
