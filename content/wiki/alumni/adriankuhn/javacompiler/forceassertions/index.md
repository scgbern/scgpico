---
Title: Force Assertions
---
#Force Assertions
# fa.jar &ndash; Force assertion check even when not enabled

Assertions are one of the most useful tools available for software engineers to help debug their code. Unfortunately, Java has assertion checking turned off by default. This means that, even if assertions fail, no error will be produced.

To make sure that assertion are always checked, simply include fa.jar into the classpath when compiling your source. FA will automagically turn all your assert statements into if-not-condition-throw-error expressions that can not the turned off!

Bending JSR 269 beyond its limits, I've written a small annotation processor (ie javac plugin) that replaces assertions statements with an explicit throw expression. Each assert statement 

```
    assert cond : detail;
```

is replaced with

```
    if (!cond) throw new Assertion(detail);
```

The latter does not generate an assert bytecode and hence your assertions are checked even when your client's VM runs without assertions enabled. This is most useful for libraries, where you have no control over your client's VM settings.

To use this processor simply include [fa.jar](https://github.com/akuhn/javac/raw/master/fa/fa.jar) in the classpath when running javac, the discovery process will automagically discover the processor. If the processor has been applied, javac will print a note of the form

```
    Note: %n assertions inlined.
```

If you want to double-check what fa.jar does, you might want to use javac's hidden <code>-printsource</code> option to inspect the source code of the modified compilation units.

## Download


-  [http://github.com/akuhn/javac](http://github.com/akuhn/javac)

<small><b>Note</b> fa.jar requires javac 1.6 to run properly, it does not work under javac 1.5 or Eclipse's compiler!</small>

&nbsp;

Read also


-  [Using Assertions as Poor Mans Exceptions](%base_url%/wiki/alumni/adriankuhn/usingassertionsaspoormansexceptions)
-  [Perry Nguyen's property annotation for Java](http://www.hanhuy.com/pfn/java_property_annotation)
-  [Useful Java compiler references](%base_url%/wiki/alumni/adriankuhn/javacompiler)...
