---
Title: Android: Understanding the use of code comments
---
#Android: Understanding the use of code comments
#Introduction
Are you addicted to mobile apps, or even developing your own apps?
Have you wondered what developers jot down in the comments of Android apps?

We are on a journey to learn how we can better understand the development of mobile apps in order to provide more suitable tools for professional developers.
In this project, we focus on the comments found in open-source code of Android apps.
Although comments are (hopefully) used by all developers, and many studies already tried to shed light on this topic, the security aspect of comments has been widely ignored. 

#Problems
A few problems you'll be confronted with:

-  Use of multiple programming languages (Kotlin, Java, ...)
-  Different comment styles
-  Foreign languages
-  Collection of contextual information (to which class or method does a comment belong?)

#State of the art
There exist tools which can enumerate comments [1] [2] [3], however, Android is an ecosystem which changes continuously and thus potentially introduces incompatibility issues with every new release.

We found that no tool provides a ``does it all\'' solution.

#Task
In this seminar project, we want to explore the use of comments in application code, and if possible, define and extract features helpful for a future security audit.<br>

Your task will consist of:<br>

-  Detection and extraction of comments
-  Elaboration on features related to security
-  Collection of such elaborated features

#Guiding research questions

-  What is the syntax for valid comments?
-  Which implications introduce foreign scripts with different writing directions, characters, etc.?
-  How can comments influence application security?
<br>

#References
[1] [Some hints on how to parse comments in Java](https://stackoverflow.com/questions/1657066/java-regular-expression-finding-comments-in-code)<br>
[2] [JavaNCSS](https://github.com/codehaus/javancss), a Java-based tool capable of counting lines of code but without comments. Analyses Java code only.<br>
[3] [Cloc](https://github.com/AlDanial/cloc), a Perl script capable of counting lines of code but without comments. Analysis Java, Kotlin, and dozens of other languages. Also available as compiled binary.
<br><br>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)
