---
Title: Reverse engineering ESE projects
---

Until now, you have looked at a large system (ArgoUML). In the following 2 weeks, you will be looking at 5 small but similar systems developed by the ESE teams.

This year the ESE teams develop a Music Player. You can find details about the projects on the [ESE website](http://ese.unibe.ch). 

You are to provide the report on the projects that will be delivered on December 13, 12:00h by the ESE teams. You are expected to send the report and the slides by December 19, 24:00h.

##Task 1: Evaluate and compare the internal quality

You are to evaluate the projects from the point of view of the Coach based on the [ESE evaluation rules](http://ese.unibe.ch/exercises/1stiteration/bewertung).

Some guiding questions:

-  What is the overview of the system?
-  How extensible is the design?
-  How easy is it to plug in a different view (for example a Web Interface) into the application?
-  How easy is it to plug in a different persistency strategy (for example a Web services) into the application?
-  How useful are the tests?
-  What is the test coverage?
-  Are there unstable or buggy tests?
-  How are errors handled?
-  How does the system react to errors?
-  What design patterns are used?
-  Is there duplicated code?
-  Are there any bad smells?
-  What are the outliers?
-  What design patterns are documented?
-  How useful is the code documentation?
-  Does it fit the code?
-  Are there any team members that do not participate?

##Task 2: Estimate a user story

You are to estimate the following user story for each project: "The user wants to share his favorite playlist with all his friends that have access to his shared hard-drive. He exports the playlist in the [M3U playlist format](http://en.wikipedia.org/wiki/M3U) so that others can import the playlist in their favorite music player. Some of his friends are using 3rd party software, others are using an ESE MusicPlayer."

##Connecting to ESE CVS

-  the release tag is: <b>firstrelease</b>
-  export CVS_RSH="ssh"
-  export CVS_SERVER="/usr/bin/cvs"
-  cvs -d :ext:<b></b>oorpt@ese.unibe.ch:/cvs/ese1 co MusicPlayer
-  cvs -d :ext:<b></b>oorpt@ese.unibe.ch:/cvs/ese2 co MusicPlayer
-  cvs -d :ext:<b></b>oorpt@ese.unibe.ch:/cvs/ese3 co MusicPlayer
-  cvs -d :ext:<b></b>oorpt@ese.unibe.ch:/cvs/ese4 co MusicPlayer
-  cvs -d :ext:<b></b>oorpt@ese.unibe.ch:/cvs/ese5 co MusicPlayer
-  the password is the same as the user name
