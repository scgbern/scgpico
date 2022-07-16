---
Title: Unit test friendly IDE
---
#Unit test friendly IDE
Unit test are awesome. That is a fact. Writing unit tests is not so awesome. Test driven development can be a pain. Current IDEs support unit test in a lot of ways, but writing a unit test for a method still means finding the right test class, opening it's source code, writing the test, then going back to the original method. This is a lot of busy work, so it's no surprise that a lot of developers skip writing the test as writing the source code is much more fun. 

We propose a side by side view of the source code and the test that exercises it. This serves 2 goals:

1. Switching from development to test writing can be done in one click or less
2. When trying to understand what a method does, both its source code and its usage (the test) are available immediately.

Also, adding a new method will automatically generate a failing test method, hinting at the developer that a test is missing.

Using some "crazy photoshop skillz" we created a picture of what the unit test friendly Pharo smalltalk browser could look like:

![http://s12.postimg.org/f4mvut5tp/unit_Test_Fun.png](http://s12.postimg.org/f4mvut5tp/unit_Test_Fun.png)

Contact person:
[Boris Spasojević](%base_url%/staff/Boris-Spasojevic)
