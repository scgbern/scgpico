---
Title: JExample
---
#JExample
<big>&mdash; *"Because well-designed tests build upon each other."*</big>

**JExample** introduces producer-consumer relationships to unit-testing. A producer is a test method that yields its unit under test as return value. A consumer is a test method that depends on one or more producers and (possibly) their return values.


-  Pinpoint failures&mdash;JExample skips any test method whose producer has failed.


-  Reuse fixtures&mdash;the return value of a producer is injected into its consumers.


-  Works with JUnit&mdash;seamless integration in both JUnit and its Eclipse plugin.

**JExample** is a small framework to write unit tests that *build upon each other*. As such, JExample diverges from common reading of the *isolation* guideline of unit testing, which stats that tests should be be separate and apart from the application and all other units. Since its first formulation on the C2 wiki, common understanding of the isolation reading has been extended to concern not only the isolation of units under test but also the isolation of test cases. While we agree to the basic permise of Test-driven Development, that isolating the units under test leads to better design of both application and test code, we dare to disagree regarding the isolation of test cases: on the contrary, it is our conviction that well-designed test cases *should* build upon each other!

On of the main arguments made in favor of test case isolation is *defect localization*. In order to quickly locate the root cause of a defect, developers want their attention to be focused on as few failing test as possible. Common wisdom states that defect localization is improved by avoiding dependencies between tests, yet empirical evidence shows that latent dependencies exist anyway even in well-designed test suites [[Gaelli 2004](%assets_url%/scgbib/?query=Gael04c&filter=Year)]. This suggests that, despite the test isolation guidelines, dependencies between tests are inevitable.

In our work, we propose to improve defect localization by making the latent dependencies between test cases explicit. In a recent case study, we showed that a dependency-aware framework improves performance and defect localization compared to strictly isolated tests [[Kuhn 2008](%assets_url%/scgbib/?query=Kuhn08a&filter=Year)].

For example, in the listing below the <tt>shouldPop</tt> test case depends on the successful outcome of the <tt>shouldPush</tt> and <tt>whenEmpty</tt> test cases. Based on this depedency declaration, the jeg framework can automatically determine a suitable order to run the tests, and to skip tests that depend on other failed tests. Developers who use jeg are thus pin-pointed to the relevant failing test case even if the test cases are not isolated.  

```
 import static org.junit.Assert.assertEquals;
 import ch.unibe.jexample.JExample;
 import ch.unibe.jexample.Given;
 import java.util.Stack;
 import org.junit.runner.RunWith;
 import org.junit.Test;
 
 @RunWith(JExample.class)
 public class ExampleStack {
 
     @Test
     public Stack whenEmpty() {
         Stack stack = new Stack();
         assertEquals(true, stack.isEmpty());
         return stack;
     }
 
     @Given("#whenEmpty")
     public Stack shouldPush(Stack stack) {
         stack.push("Foo");
         assertEquals(false, stack.isEmpty());
         assertEquals("Foo", stack.top());
         return stack;
     }
 
     @Given("shouldPush")
     public void shouldPop(Stack stack) {
         Object top = stack.pop();
         assertEquals(true, stack.isEmpty());
         assertEquals("Foo", top);
     }
 }
```

Dependent tests not only improve defect localization, they also run faster and reduce code duplication. Given all dependencies had been executed successfully, a test T can reuse their fixtures (ie cached return values which are cloned before injection) instead of setting it up from scratch. This helps you to save setup costs and avoids code duplication.
If, however, one of the dependencies fails, test T and all its dependents are skipped.
This helps you to pin-point failures to their very cause.

JExample is open source and available [for download](%base_url%/download/jexample).


---

# Publications

[Papers and thesis](%assets_url%/scgbib/?query=JExample+scg&filter=Year)

