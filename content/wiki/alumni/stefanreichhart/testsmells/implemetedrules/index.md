---
Title: Implemeted Rules
---

# Non-Serious TestSmells
These rules try to find the most primitive structural problems or act as reminders/hints for possible bug-traps

-  TSExplicitTestRule : does the class "A" has a test "ATest" or "TestA" ?
-  TSWeakExplicitTestRule : (same, but be tolerant to "s" and other sequences)
-  TSPrimitiveTestRule : is a class "A" referenced by a test ?
-  TSChasedPrimitiveTestRule: is a class "A" references by another class, .... referenced by a test ?
-  TSWellDefinedTestRule : are the selectors "isAbstract", "shouldInheritSelectors" used properly ?
-  TSEmptyCategoriesRule : does a test contain empty categories (ignores 'no messages') ?
-  TSEmptyClassRule : is a test empty (ignores inheritance) ?
-  TSEmptyTestSuiteRule : is the resulting testsuite of a test empty ?
-  TSMixedSelectorsRule : are non-testing and testing selectorsare mixed up (same category) ?
-  TSUnclassifiedCategoryRule : does a test contain unclassified methods ?
-  TSWellDefinedCategoriesRule : are test categories "test[ or run](%base_url%/wiki/alumni/stefanreichhart/testsmells/implemetedrules/orrun)" defined ?
-  TSTestNameRule : does the name of a test match the patterns "[Test, Test](%base_url%/wiki/alumni/stefanreichhart/testsmells/implemetedrules/testtest)", "[Tests, Tests](%base_url%/wiki/alumni/stefanreichhart/testsmells/implemetedrules/teststests)" ?
-  ...

# Serious TestSmells

-  ...
