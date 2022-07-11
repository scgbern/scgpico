---
Title: Helping Programmers To Write Assertions
---

Most programming languages and environment offer ways to define assertions, such as program invariants and pre- and post-conditions using a particular language keyword. For example, consider the following Java method:
```public int factorial(int n) {
    assert n >= 0 : "Factorial is not defined for a negative number";
    if(n < 1)
        return 1;
    else
        return n * this.factorial(n - 1);
}
```
Since the factorial function is not meaningful and therefore not defined for a negative number, it may be useful for a programmer to enforce that factorial cannot be called using a negative number.

An assertion may be defined for that purpose. An assertion may be written in the Java programming language using the assert keyword, which takes a conditional expression and optionally an error message. During execution, if the condition is not met, an error is thrown. 

Assertions are useful to implement design by contract by specifying invariant, pre-, and post-conditions. Similarly to Java, dynamically typed languages (e.g., Python, JavaScript, Pharo) offer an assert keyword to define assertions. Although recognized as being a useful feature, the research community has little knowledge and understanding at (i) how assertions are written in a dynamically typed programming languages, and (ii) how to assist programmer to write sophisticated assertions.

This student project consists of two phases: getting an understanding on how programmers write assertions, and building a recommender that generate assertions for a given method.

**Phase 1:** This first phase is about analyzing a corpus of applications written in a dynamically typed programming language (e.g., Python, Pharo). Techniques from the field of data science will be employed to extract, describe, and characterize assertions. We expect to find a large proposition of assertions that are related to types and null values, but this has never been verified before.

**Phase 2:** By using the result of Phase 1, we can build a small model that will produce a set of assertions for a given method and a given error. For example, in case an error occurs during a program execution, appropriate assertions can be proposed to: (i) help programmers propose a meaningful message error, and (ii) trap an invariant violation early in the method call chain. A large range of techniques can be employed to generate assertions (e.g., statistic, genetic programming, deep-learning). The technique to be employed will depend on the student's interest.

**Opportunity to explore:** This topic is about pushing the state-of-the-Art in the field of identifying program invariant for dynamically typed programming languages. Most of the research on program invariant apply to statistically typed languages (e.g., C, Java), however little efforts have been made so far for dynamically typed languages, despite their massive adoption by software engineers. This topic has the potential to lead to a research publication.

**Contact:** [Alexandre Bergel](http://bergel.eu) and [Oscar Nierstrasz](%base_url%/staff/oscar)
