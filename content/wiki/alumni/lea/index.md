---
Title: Lea Hänsenberger
---
#Lea Hänsenberger
Visit my master project's website, [JUnit2JExample](%base_url%/wiki/projects/archive/JUnit2JExample), to see what I've done for my thesis.


#Logbook


-  [http://www.csg.is.titech.ac.jp/~chiba/javassist](http://www.csg.is.titech.ac.jp/~chiba/javassist)
-  [http://www.jboss.org/javassist/](http://www.jboss.org/javassist/)
-  http://www.iam.unibe.ch/~akuhn/s/2006-IGE-Bytecode-Manipulation.pdf
-  [http://spoon.gforge.inria.fr/](http://spoon.gforge.inria.fr/)


-  [http://groups.csail.mit.edu/pag/jsr308/current/checkers-manual.html#htoc48](http://groups.csail.mit.edu/pag/jsr308/current/checkers-manual.html#htoc48)

#Questions/TO DO's
##Javalanche:

-  ignored tests counted as failed, not all tests run for all mutations.

#Case Studies

##Projects

###ant
#### concurrent threads!

-  junit4
	-  6 tests missing
	-  org.apache.tools.ant.util.regexp.Jdk14RegexpRegexpTestJUnit4 and Jdk14RegexpMatcherTestJUnit4 and JakartaRegexpMatcherTestJUnit4 and JakartaRegexpRegexpTestJUnit4: replace expected AssertionFailedError with AssertionError
	-  org.apache.tools.ant.launch.LocatorTestJUnit4.testInternationalURI: replaced assertEquals(int,char) with assertTrue(int \== char)
	-  org.apache.tools.ant.IntrospectionHelperTestJUnit4: AssertionFailedErrors are expected, but in JUnit4 AssertionErrors are thrown.
	-  org.apache.tools.ant.util.ResourceUtilsTestJUnit4 and org.apache.tools.ant.types.FlexIntegerTestJUnit4: constructor has String argument, removed it

-  jexample
	-  org.apache.tools.ant.types.AssertionsTestJUnit4 and RedirectorElementTestJUnit4 fails when instrumenting


###checkstyle

-  Tests failing when instrumented, run with suite

###chiba

-  conversions ok, jexample tests failing

###choco-cp

-  @Ignore for test choco.solver.search.SolverTest.testRestartStrategy()
-  @Ignore for test parser.ResolutionTest.mainTest()

###choco-old_version

###cruisecontrol

-  concurrent tests

###findbugs-1.1.1

-  conversions ok, two methods in one test fail

###maven

-  conversions ok
-  push down tearDown of PlexusTestCase before converting
####maven-artifact-manager

-  override setUp method in AbstractArtifactComponentTestCaseJUnit4 to make sure this class is translated
####maven-core

-  junit4 tests fail when run with ant
-  add dependency to setUp method in subclasses to AbstractConsoleDownloadMonitorTestJUnit4JExample => tests fail because of same dep twice because once run in superclass and once in current class
####maven-model

-  no dependencies detected
####maven-project 

-  copy resource ProjectClasspathTest.xml to ProjectClasspathTestJUnit4(JExample).xml
-  rename inner @Test to @org.junit.Test
-  push down tearDown from AbstractMavenProjectTestCase over AbstractProjectInheritanceTestCase

##Problems


-  Threads. The instrumented code does not run because with threads multiple methods can be run concurrently and therefore the check whether the last started method is the one returning fails.


-  JFreeChart: TestCases used as Listeners which must implement some methods. Those methods are changed by the convertion because they're accessing the single field of this TestCase

###JUnit2JExample

-  do not do the field translation in abstract classes
-  if the extended class has no test methods but defines the field, this field is not translated because the class is not translated
-  if tearDown is declared in superclass that has no test methods it won't have any dependencies since they are all defined in possible multiple subclasses.

###JExample

-  CASTING NOT WORKING ANYMORE. CLONING?
-  Constructor in public inner class not found if not static (cruisecontrol)
-  fields of superclasses need to be cloned too

###JUnit3To4

-  if there's an overwritten assertEquals the ones from TestCase should be prefixed with 'Assert.'
-  lost 6 runs in ant, no idea why and where
-  after conversion tests of maven-artifact-manager not running anymore
-  Access to constants of testcase, classname should be changed as well.

##Changes
###maven-core

-  org.apache.maven.cli.MavenCliTest.testGetBuildProperties() is red, no idea why

#Logbook

##<a name="1">30.09.08</a>

when running the plugin I'm missing some classpath entries to load and run the test cases that are to be migrated. I'm looking at the eclipse launching fraemwork now, since the simple running of a java application seems to be a similar problem

##<a name="2">03.10.08</a>

working on an eclipse plugin providing an own launch configuration. like this, you can actually insert the classpath you need to run your classes. the launch shortcut appears now and I will first try to just run the JUnit test without further modification of the byte code.

##<a name="3">07.10.08</a>

I'm extending the JUnit launch configuration of the JUnit eclipse plugin in order to run the test. that seems to work. next step is to include the prototype that does the byte code manipulation, collects the data and saves them into a text file (for now).

executing and instrumenting the tests works fine. next thing is to write the new test with the dependencies.

##<a name="4">09.10.08</a>

writing a Copy of the test case now works too. Next thing is to actually rewrite it with dependencies.
In order to get the AST of a class you need the CompilationUnit. Since we only know the absolute path of the java file at this point we need to do a workspace search, which seems to work fine with a little hard coded help. I'll try to fix that later.

##<a name="5">10.10.08</a>

rewriting the tests also works. unfortunately you can't execute them, since the instance of the unit under test is not passed from producers to consumers.

the plugin works when run inside an eclipse instance that is started from the pde environment of the main eclipse instance. when exporting the plugin to jars (core and ui) the core classes are not found when starting the migration.

##<a name="6">20.10.08</a>

the plugin works. there are some hard-coded things and the classpath of the project of the test to be migrated has to contain the javassist and jexample libraries. i wanted to load those libraries from within the plugin, but java can't load jars from within a jar.
hard-coded: the sources have to be inside a 'src' folder and the class files have to be in a 'bin' folder.

i just realized that the plugin doesn't work on windows because of some path issues and apparently also other issues that i'm still searching.

##<a name="7">24.10.08</a>

I think I found the problem. When the main-Method of the core plugin is run it starts a new Thread, which is quite logic, but apparently the plugin itself does not wait for that Thread to end before it goes on. As a consequence the save file with the partial order is missing and an exception is thrown.

I solved the problem by writing a file,when the analysis is finished and the code generation part is only starting when this file exists. it seems that on windows (in parallels) the filesystem access is painfully slow, it takes quite a lot of time to finish. I'll have to try it on a native windows machine to see, if parallels is the problem.

##<a name="8">05.11.08</a>

Formatting the source code of the generated test class works fine. In order to organize the imports the JavaEditor of the class is needed. If I would be able to open the generated class in an editor that would be no problem. At the moment I get an exception that there is no active workbench page. I'm not sure what this exactly means and I couldn't find anything helpful in the internet. I'm gonna ask in the irc channel.

##<a name="9">06.01.09</a>

I may have found the problem which causes the slow execution on Windows systems. It's the check, if an executed class is a class to be instrumented. So I'll try to improve this part and check, if it helps, before I start to have a deeper look at Julien's profiler.

##<a name="10">07.01.09</a>

Temporarily solved the javassist problem, i.e. javassist had to be on the classpath of the project that contains the test to be migrated. I solved this by adding the sources of javassist to the core plugin.

it is checked whether a testcase to be instrumented already is a jexample test. it doesn't instrument such a test but it doesn't stop the plugin yet. somehow it needs to stop the thread and give back control to the plugin and give it an error message.

##<a name="11">09.01.09</a>

Introduced some thread-handling when errors during the instrumentation occur. Using Thread.currentThread().stop(), which is deprecated. I need to find another way to stop the main thread. Also passing error messages is done by writing them into a file :-/.

##<a name="12">15.01.09</a>

Implemented a simple spoon example where a class is copied and rewritten. Seems to work quite fine.

##<a name="13">16.01.09</a>
The App can be executed standalone with the arguments: 
```
--classes (the directory where the .class files of the classes to instrument are located)
--testClass (the fully qualified name of the test class to be migrated)
--sources (the parent folder of the package structure where the test class is located)
\[--outputDir] (the directory where to put the newly created test file, if not set the same directory as the original test is used)
```

An example command could look like this:

```
java -cp JUnit2JExample.jar:javassist.jar:jexample-4.4-r271.jar:bin/ ch.unibe.junit2jexample.main.JUnit2JExample --classes bin/ --testClass queue.test.QueueTest --sources src/ --outputDir migrated/
```

Hint: if JUnit2JExample.jar is properly built, all the other libraries don't need to be explicitly on the classpath
Hint2: on command line it doesn't work at the moment, but it works in eclipse (make a new run configuration, as project choose the one where the test to be migrated is located, as main class choose ch.unibe.junit2jexample.main.JUnit2JExample and as program arguments pass the above mentioned arguments)

##<a name="14">19.01.09</a>

here the updated an working command line command:

```
java -ea -cp &lt;path_to_jj.jar&gt;:bin/ ch.unibe.junit2jexample.main.JUnit2JExample --classes bin/ --testClass queue.test.QueueTest --sources src/ --outputDir migrated/
```

##<a name="15">28.01.09</a>

The setup method is instrumented separately and CoverageData knows the setup method if it exists. In order for the migrated tests to work the setup method has always to be the first dependency.

##<a name="16">02.02.09</a>

All the methods, 'normal' methods and test methods, are instrumented the same way. CoverageData gets, in addition to the name of the method, all the annotations of a method, so it knows, if it is a test method, a setup method or a normal method that was invoked. The setup methods are stored in list in the CoverageData instance.
Furthermore, setup and teardown methods are not defined as dependencies anymore in the migrated testcase. They are inserted at the beginning resp. at the end of every test method. Further optimizations will be made in a next step.

##<a name="17">05.02.09</a>

Wrote two example test cases. One is the simple Stack example, which as JExample test is just a sequence of one test method after another. The other is an Addressbook, where practically every test method depends on the testAddContact method because that's the only test that actually modifies the addressbook instance.

##<a name="18">13.02.09</a>

Spoon can now be called programmatically by initializing the environment like it is done in the spoon.AbstractLauncher.run() method.
I "extended" the pretty printer of spoon. Obviously the do not intend it to be extended so I had to copy the whole class and just make my changes there. The same for the JavaOutputPrinter since it's otherwise not possible to use another pretty printer than the DefaultJavaPrettyPrinter of spoon.
Replaced the classes option with packages option where you can specify the package(s) of the classes to be instrumented. Multiple packages are separated by ":". Subpackages of the specified packages are included.

```
java -ea -cp &lt;path_to_jj.jar&gt;:bin/ ch.unibe.junit2jexample.main.JUnit2JExample --packages package --testClass queue.test.QueueTest --sources src/ --outputDir migrated/
```

##<a name="19">23.02.09</a>

Replaced the code generation with Spoon with code generation with JavaC. That works fine and doesn't modify the original file.
Two translations are done: first setup and teardown methods are translated and collected and second the rest is translated, i.e. dependency annotations are inserted, import statements are removed and added, class name is changed and invocations of setup/teardown methods are inserted in the method bodies and possible Exceptions thrown by those methods are added to the thrown list of the test methods.
If the first x statements of a method and its dependency are identical those statements are deleted from the dependent method's body. The comparison of statements needs to be improved, it is done by string representation for now.

##<a name="20">26.02.09</a>

If there's only one instance variable it is used as an example. This means that every access to this instance variable has to be converted in an access to a local one. Furthermore, a parameter with the same type and name is added to every test method with a dependency and a return statement of that variable is added to every test method.

setUp and tearDown methods are not private anymore and they're not inserted as invocations in every test method. They're converted to test methods. Every root-testmethod declares a dependency to the setUp method and the tearDown method declares as dependency every test method that has no consumers.

##<a name="21">02.03.09</a>

I just realised that when deleting identical statements we should check if this is an initialization of a local variable and if it is, we cannot delete it.

Bug fix: to sort methods and detect dependencies based on call traces I used the Collections.sort() method and implemented compareTo to do the check for coverage. I just realized that Collections.sort() does a merge sort and hence, does not compare every method with every other method, so dependencies can get lost. I fixed that by detecting dependencies 'manually', i.e. with two nested for-loops, and then doing the sort based on the generated subset-lists of the test method.

Constructors are instrumented like normal methods. We'll need this to slice the setup method.

##<a name="22">12.03.09</a>
I implemented a tool that converts JUnit 3 Tests to JUnit 4 Tests. It uses the JavaCompiler and TreeTranslator to do this. What it does:

-  it organizes the imports, i.e. removes unnecessary imports and adds JUnit 4 related ones,
-  appends 'JUnit4' to the class name,
-  adds annotations to setUp, tearDown and test Methods, which are all recognized by their name, since JUnit 3 works with naming conventions,
-  makes setUp and tearDown public since they're protected by default, but JUnit 4 requires them to be public,
-  removes super.setUp() and super.tearDown() statements that are, e.g. in eclipse, automatically inserted

The tool can be used on command line by executing a statement like

```
java -cp &lt;path_to_junit3to4.jar&gt; OR &lt;path_to_junit4&gt;:&lt;path_to_bin&gt; ch.unibe.junit3to4.Converter -i path/to/java/file.java
```

where the junit3to4.jar can be generated with an ant script in the project
or by editing and executing the RunConversion class in the project.

##<a name="23">20.03.09</a>
Adapted the Junit3To4 converter so it checks if a class extends TestCase and implements at least one test method before it translates it to JUnit 4. Next thing to do is cope with suite() methods and super-calls.

##<a name="24">25.03.09</a>
Introduced a visitor TypeChecker which checks whether a CompilationUnit is a TestCase or a TestSuite. It is a TestCase if it implements at least one test method and doesn't implement a suite method adding another class to the suite apart from itself. It is a TestSuite if it implements a suite method that adds other classes to a suite and does not implement a test method.
Furthermore, super-calls in constructors are deleted and if the constructors then have an empty body they're deleted.

##<a name="25">26.03.09</a>
TestSuite are now translated too. All the classes passed as arguments to the addTestSuite method in the suite method are collected. In the end those classes are put into a class array and passed as argument to the SuiteClasses annotation. The new TestSuite has an empty body and is annotated with @RunWith(Suite.class) and @SuiteClasses({ classes }).
The translation works for the JFreeChart tests.

##<a name="26">27.03.09</a>
To JUnit2JExample you can pass a package as &mdash;testClass argument and then all classes in this package are analyzed and transformed.

JUnit can run a TestCase more than once when running multiple classes at a time, so I needed to make sure that a trace for a testmethod is added only once to the coveragesets, otherwise strange dependencies arise.

JUnit2JExample ignores test suites, i.e. classes annotated with @RunWith(Suite.class)

##<a name="27">01.04.09</a>
When testing everything with the GoogleCollections Project I found some cases we didn't think of when writing the translation to JExample.
There can be methods that are not test methods but access a field. If we delete that field there's obviously a compilation error.
Another problem are abstract classes. Since they're not executed explicitely there are no dependencies. I try to save the called methods with the declaring class instead of the class that is run at the moment.

##<a name="28">02.04.09</a>
Wrote some tests to show the problems.
I forgot to adapt the extensions, i.e. rename them to <ClassName>JExample. Implemented it so it checks whether the extended class is in the same package and therefore likely to be converted too. If this is the case the extension is changed, i.e. 'JExample' is appended to it. If not it just stays as it is.

##<a name="29">16.04.09</a>
In the class JExampleTestWriter the model for the transformation is created. This is done with a TreeScanner which creates the ClassUnderTransformation objects with all the needed information. Those objects are added to an instance of TransformationModel which, in the end, sets the superclasses for each class under transformation. The corresponding test is ch.unibe.junit2jexample.transformation.ModelCreation.

##<a name="30">20.04.09</a>
I wrote a list of test smells that are solved with JExample. The smells are from "xUnit Test Patterns" by Gerard Meszaros. Find the list in the project in the file testSmells.txt.

##<a name="31">23.04.09</a>
Started to adapt the translation so the necessary changes are saved in the translation model and can be applied to potential subclasses. I'm not sure whether I should save the addition of dependencies, i.e. whether a method in the subclass should have the same dependencies as the method it's overriding. At the moment I start to record the changes in the InstVarTranslator since there are the most problems with inheritance.
At the moment the original Testclass is changed, I'm not sure why since I copy the Tree before doing any changes.

##<a name="32">27.04.09</a>
I started to transfer the actual program transformations from the visitors into the transformation model. I.e. it loops over all ClassUnderTransformation objects and calls a translation object for every type of translation. In these translations objects for every single transformation a new object is generated which knows how to do the transformation. Every transformation made on a class or method is saved in the ClassUnderTransformation resp. MethodUnderTransformation.

##<a name="33">29.04.09</a>
Finished the MethodBodyTranslation. The deletion of the statements is not done in a Transformation object as in all the other Translations because this is a transformation that should not be applied by subclasses.

##<a name="34">07.05.09</a>
After adding parameters and return values to methods the dependencies are organized so the order of the parameters and the order of the dependencies match.
For every MethodUnderTransformation the original tree is saved so in the MethodBodyTranslation the comparison of the statements can be done on the original trees.

Just found a big problem: if there are tests from JUnit 3 converted to JUnit 4 they might contain try-catch blocks. The instrumentation entered after that block is never reached and hence the test method is never "ended" when it comes to CoverageData.
I try to adapt the JUnit3To4 conversion to find try-catch-blocks with a fail() call in the try block and convert it to an expected value in the @Test annotation.
Works now with test TestCase. Next applying to GoogleCollections.

##<a name="35">11.05.09</a>
Javassist has the possibility to pass 'true' to the insertAfter() method and then it makes sure that the instrumentation is called before the method returns.

##<a name="36">14.05.09</a>
when calls to helper methods using the translated field are translated it is checked whether the surrounding method has this field in his scope and if no this method is translated too.

##<a name="37">18.05.09</a>
Additionally to the declaring class the currently running class is saved with the TestTraces. The methods are sorted over all classes and not per declaring class anymore. If a dependency is in a superclass and this superclass is not abstract the classname is added to the dependency string.

##<a name="38">10.06.09</a>
Changed javassist instrumentation to use an agent instead of javassist Loader. Now most of the instrumented tests also finish successfully instrumented.

JUnit3To4 and JUnit2JExample can be run with the '-r' option to get tests to be converted recursively.

JFreeChart conversion: deleting tests org.jfree.chart.axis.junit.PeriodAxisTestsJUnit4JExample, org.jfree.chart.plot.dial.junit.DialPlotTestsJUnit4JExample, org.jfree.chart.plot.junit.CategoryMarkerTestsJUnit4JExample, org.jfree.chart.plot.junit.MultiplePiePlotTestsJUnit4JExample,
org.jfree.data.general.junit.DefaultPieDatasetTestsJUnit4JExample,
org.jfree.data.time.ohlc.junit.OHLCSeriesTestsJUnit4JExample
 
They are implementing Listener interfaces, hence are Listeners too and the methods to implement from the interface are transformed because they access the transformed field. Test smell!

##<a name="39">11.06.09</a>
Changed checkstyle test com.puppycrawl.tools.checkstyle.StringArrayReaderTest to do char-int comparison with '\==' instead of 'equals', since the equals method in the Character class returns false if the other object is not instance of a Character.

For the JUnit2JExample conversion you can specify a TestSuite as testclass argument. All the tests run by the test suite are instrumented and converted.

checkstyle does not convert, it does not find ResourceBundles.

##<a name="40">22.06.09</a>
We checked that only one test method can be started during instrumentation. But if a test method calls another test method this condition doesn't hold. So I changed the CoverageData class so it handles a second test method call as normal method call.

Calling task.analyze() so the type information is also there. But, the analyze() inserts strange constructors in anonymous classes, so I'll have to remove them in the end.

##<a name="41">24.06.09</a>
In CoverageData for the before methods the running and the declaring class is saved. For the dependencies those are merged and inserted.

##<a name="42">07.07.09</a>
ClassUnderTransformation Line 188: removed the check for visible fields in superclasses.
TransformationModel Line 98: removed check whether class is abstract

##<a name="43">15.07.09</a>
check whether helper method invocation needs to be translated checks if arg is subtype of param if they're not equal

##<a name="44">16.07.09</a>
first do instance variable translation and then methodbodytranslation

add dependency to setup method if no body translation is done

##<a name="45">20.07.09</a>
If a dependency is in another class and the current class has a before method, also add that before method to the dependencies, otherwise it might never be run or not be run before the test method respectively. 

When checking for statements to delete ignore the befores as dependencies, i.e. if a method depends on the before method and another method only the 'right' dependency counts.

##<a name="46">27.07.09</a>
if a superclass has a translatable field but that was not translated, don't translate it in the subclasses.
