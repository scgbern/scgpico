---
Title: Identifying method argument types from method tests
---

The lack of static type information in dynamically-typed languages aggravates program comprehension. This problem may be eased by the usage of type hints in method argument names. For example, if a method expects an argument of the type String, the method argument will be named 'aString'.

This naming convention is respected in about 30% of cases. For example, the method RPackageOrganizer>>#packageNamed: anObject has the method argument named anObject. Its analysis reveals the expected type to be the Object type which is not correct. The test associated with this method has the following code:

```RPackageOrganizerTest>>#testPackageNamed
|name package|
name := 'Collections-Core'.

package := rPackageOrganizer packageNamed: name.

...
```

The goal of this project is to analyze the test units associated with the particular method and statically infer types of the variables used as the method arguments in the test calls. In the previous example the analysis would reveal that the expected type should be String.

These types would then be used to suggest the method argument names that would adhere to the naming convention.
