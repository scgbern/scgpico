---
Title: JUnit2JExample
---

JUnit2JExample is a prototype to automatically convert JUnit 4 test classes to JExample test classes.

By analyzing the coverage sets of the test methods we can automatically recover implicit dependencies between test methods. The recovered dependencies can then be used to automatically migrate the original JUnit test classes into JExample test classes that declare explicit dependencies.

The migration from JUnit 4 to JExample happens in two steps:

-  Dynamic Analysis. We run the original JUnit tests and collect the coverage set of each test method, i.e., all methods that were called during the execution of a test method. The methods are then partially sorted by means of their coverage sets. From this order we extract the implicit dependencies. If a method m1 covers a superset of the method m2âs coverage set, m1 implicitly depends on m2.
-  Program Transformation. With the results from the dynamic analysis we transform the original JUnit tests into JExample tests. Former setUp and tearDown methods (methods annotated with @Before and @After respectively) are migrated to conventional test methods. Based on the results from the dynamic analysis we declare new producerâconsumer relationships. If a method m1 implicitly depends on a method m2 we add an annotation @Given(m2) to m1. Furthermore, if possible, we introduce fixture injection and remove statements that both tests in a producerâconsumer relationship execute from the body of the consumer.

#Quick Start

##JUnit2JExample

In the following you find a short tutorial on how to install and use JUnit2JExample to migrate JUnit 4 tests to JExample tests on the command line and in eclipse.

Download the JUnit2JExample jar from http://scg.unibe.ch/download/jexample.

###Arguments


-  &mdash;testClass, -t: The fully qualified class name of the test class to be migrated or the package prefix for all test classes to be migrated.
-  &mdash;sources, -s: The path to the location of the source files of the test classes to be migrated.
-  &mdash;output, -o: The path to the directory where the transformed classes should be written to. If this argument is not set the migrated test classes are written to the directory specified in &mdash;sources.
-  -r: If the specified testClass is a package prefix and if this flag is set all test classes with this package prefix are migrated. If the flag is not set only test classes with exactly that package name are migrated.
-  -javaagent: The path to the agent jar file. If the JUnit2JExample jar is in the classpath this is just ``agent.jar\''. As argument to the agent jar you have to pass the package prefixes that are to be instrumented. Multiple packages are separated with a colon. E.g., -javaagent:agent.jar=pkg1:pkg2.

###Usage on the Command line

```java -javaagent:agent.jar=<package> -cp path/to/junit2jexample.jar:your_class_path\
ch.unibe.junit2jexample.main.JUnit2JExample --testClass <testClass> --sources <sources>\ 
--output <output> [-r]
```

###Usage in Eclipse


-  Add the downloaded jar to the classpath of the project the test classes to be transformed belong to.
-  Open the run configurations dialog and add a new run configuration for a java application.
-  In the main tab: select as project the project the test classes to be transformed belong to and
-  enter ch.unibe.junit2jexample.main.JUnit2JExample as main class.
-  In the arguments tab: enter &mdash;testClass &lt;testClass&gt; &mdash;sources &lt;sources&gt; &mdash;output &lt;output&gt; [-r] to the program arguments. 
-  In the arguments tab: enter =-javaagent:agent.jar=&lt;package&gt; to the VM arguments.
-  Run the created run configuration.

##JUnit3To4

In the following you find a short tutorial on how to install and use textsc{JUnit3To4} to migrate junit 3 tests to junit 4 tests on the command line and in eclipse.

Download the textsc{JUnit3To4} jar from url{http://scg.unibe.ch/download/jexample}.

###Arguments:


-  &mdash;input, -i: The path to the java file of the test class to be converted or the path to the folder containing test classes to be converted.
-  &mdash;output, -o: The path to the directory where the transformed classes should be written to.
-  -r: If the specified input path points to a directory and if this flag is set test classes to be transformed in this directory are collected recursively. If the flag is not set only test classes directly residing in the directory specified as input are transformed.

###Usage on the Command line

```java -cp path/to/junit3to4.jar:your_class_path ch.unibe.junit3to4.Converter\
--input <input> --output <output> [-r]
```

###Usage in Eclipse


-  Add the downloaded jar to the classpath of the project the test classes to be transformed belong to.
-  Open the run configurations dialog and add a new run configuration for a java application.
-  In the main tab: select as project the project the test classes to be transformed belong to and
-  enter ch.unibe.junit3to4.Converter as main class.
-  In the arguments tab: enter &mdash;input &lt;input&gt; &mdash;output &lt;output&gt; [-r] to the program arguments. 
-  Run the created run configuration.

#Publications
![Fixed Query](%base_url%/scgbib/fixedquery)

#People

-  [Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn)
-  Lea Hänsenberger
