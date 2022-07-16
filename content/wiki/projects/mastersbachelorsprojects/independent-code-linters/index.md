---
Title: Exploring Platform Independent Code Linting
---
#Exploring Platform Independent Code Linting
#Introduction
Security code smells are complex and it is very time consuming to write linters for them.
A linter is software that decides about the code, which must be highlighted in the editor view [1].

#State of the art
Since almost every IDE maintains its own syntax tree implementation, there is currently no way to implement a linter once and for all major IDEs.

#Task
Your task is to evolve the used syntax that is loosely based on SrcML [2] and, if possible, to implement a prototype that can provide such features.
We will start with implementing an IntelliJ plug-in that supports generic linting declarations, e.g., which can highlight every Java String variable with the assigned value "Hello World".

An example declaration for such a linter could be:

```
<linter name="Issue 001: 'Hello World' in production releases" language="Java">
    <note>
        This linter highlights String variables with assigned "Hello World" values.
    </note>
    <matcher>
        <literal type="string">
            Hello World!
        </literal>
    </matcher>
</linter>
```

This should match the variable message in a code snippet like this:

```
String message = "Hello World!";
```

#Requirements
You should have some knowledge of an Abstract Syntax Tree (AST) and its manipulation [3], and you should be able to read and parse XML data from disk.
Some experience in working with IntelliJ is a plus.
<br>

#References
[1] [Linter examples for Android Studio (based on IntelliJ)](http://tools.android.com/tips/lint-checks)<br>
[2] [Java declarations used by SrcML](https://www.srcml.org/doc/java_srcML.html)<br>
[3] [Navigating in the AST structure of IntelliJ](https://plugins.jetbrains.com/docs/intellij/navigating-psi.html)<br>
<br><br>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)
