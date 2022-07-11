---
Title: JUnitWire
---

<b>JUnitWire</b> is a testing framework for Java, based on the idea (and part of the code) of [JExample](%base_url%/research/jexample). It's an extension of JUnit which allows you to let tests work together, without this having a negative impact on test feedback.

JUnitWire differs from JUnit in the same way as JExample does. If a test A depends on another test B which already failed, test A will be marked as skipped, rather than failed.

JUnitWire mostly differs from JExample in the way tests are wired together. There is no need for developers to declare explicitly on which tests they depend. Rather just calling and using the result other tests in the middle of your code will automatically be handled correctly by JUnitWire.

<br>

```@Test
public Set testAdd() {
    Set set = new TreeSet();
    set.add("Foo");
    assertEquals(1, set.size());
    return set;
}

@Test
public void testRemove() {
    Set set = testAdd();
    set.remove("Foo");
    assertEquals(0, set.size());
}
```

<br>

<h3>Discussion</h3>
JUnitWire unlike JExample is not dependent on annotations. It rather looks at stack traces to figure out if a test has failed because of another test. This allows developers to write code as they are used to, just by calling methods.

Looking at stack traces alone however appears not to be powerful enough, since Java's stack traces are limited to class and method names. This does not allow us to find out which overloaded methods were exactly called. Which forces us to only use non-overloaded methods. For this reason as future work I'm considering introducing a way of invoking methods as such that the testing framework knows at runtime what's going on. This will also empower us in the same way as first-class dependencies empower JExample. Where the difference is that we can only compute information about the tests at test-runtime, not before starting them. 

Another problem is test method parameters, which is currently handled by none of the above for two reasons. Firstly we don't allow it for the same reason as stated before. Secondly because for this to work we need default arguments. For this reason I'm considering introducing a @DefaultArguments keyword.

<h2>Download JUnitWire</h2>
JUnitWire is available at:

-  SVN [https://www.iam.unibe.ch/scg/svn_repos/Sources/JUnitWire/](https://www.iam.unibe.ch/scg/svn_repos/Sources/JUnitWire/)

<h2>People</h2>
[Toon Verwaest](%base_url%/staff/toonverwaest)
