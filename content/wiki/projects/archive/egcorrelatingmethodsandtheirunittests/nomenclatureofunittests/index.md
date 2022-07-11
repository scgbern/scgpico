---
Title: Nomenclature of Unit Tests
---

#Basic Definitions
We first introduce some basic terminology, and then describe the categories of unit tests appearing in the taxonomy.
##Assertion
</a>
An assertion is a method that evaluates a (side-effect free) boolean expression, and throws an exception if the assertion fails. Unit test assertions usually focus on specific instances whereas assertions of Design By Contract are used in post-conditions and are more general.
##Package
We assume the existence of a mechanism for grouping and naming a set of classes and methods. In the case of Java this would be packages; in the case of Smalltalk we use class-categories as the smallest common denominator of several Smalltalk dialects.
##Command
Every XUnit Test is a command, which is a parameter-free method whose receiver can be automatically created. The XUnit Test can thus be automatically executed. 
##Test package
A package which includes a set of commands.
##Package under Test
If a test package is tested by another package, we call this other package the package under test, which may be identified either implicitly by means of naming conventions, or explicitly by means of a dependency declaration.
##Candidate method
A method of the package under test.
##Dynamic program slice
The dynamic program slice presented by Korel etal cite{Kore88a} is a part of a program that affects the computation of a variable of interest located in a statement during program execution on a specific program input.
##Assertion slice
An assertion slice of an assertion in a command is an intersection of all candidate methods called directly by the command and the dynamic program slice of the command up to the evaluation of the assertion and with respect to all variables used in the assertion. In the following example the program slice up to the first assertion with respect to variable c would not include the 4th statement and thus no call of the subtraction operator.

```testSumAndSubstract
  a=1;
  b=1;
  c=a+b;
  d=c-1;
  assert c==2;
  assert d==a;
```
 [Assertion](http://kilana.unibe.ch:9090/nomenclatureofunittests#assertion)

##Focuses on one method
We say that a command **focuses on one method**, if it tests the result or side effects of **one** specific method and not the result or side effects of several methods.
#Categories of Unit Tests
We now describe and motivate each of the categories of unit tests appearing in the taxonomy. For each node of our taxonomy we present a real world example found in the Squeak unit tests. For more clarification see also figref{schema}.
##Command
Unit tests are commands: The command receiver in the case of a XUnit test case can be constructed automatically, e.g. <code>new MyTestCase(myTestSelector)</code>. The whole command then looks like this:
```new MyTestCase(myTestSelector)).run()
```
##Method command
A **command** that focuses on a single method.
##Method test command
A method command which has assertions testing the outcome of **each call** of the method under test.
##Method test
A method test command which tests the outcome of one call of a method under test. Example:
```YearMonthWeekTest>>testIndexOfDay
  self assert: (Week indexOfDay: 'Friday') = 6.
```
</code>
##Method test suite
A method test command which tests the outcome of the method under test in several situations. Example:
```YearMonthWeekTest>>testDaysInMonth
  self assert:
    (Month daysInMonth: 2 forYear: 2000) = 29.
  self assert:
    (Month daysInMonth: 2 forYear: 2001) = 28.
  self assert:
    (Month daysInMonth: 2 forYear: 2004) = 29.
  self assert:
    (Month daysInMonth: 2 forYear: 2100) = 28.
```
