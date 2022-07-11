---
Title: Bug Report Quality Estimator
---

#Project Idea:

There is a nice paper called [âWhat Makes a Good Bug Report?â](http://thomas-zimmermann.com/publications/files/bettenburg-fse-2008.pdf) by researchers from Germany, Switzerland, and Canada. This paper suggests that there is a big misunderstanding between bug reporters and bug fixers.

In other words, bug reporters often miss very valuable information about the bugs in their reports. That leads to delayed fixes.

The idea is to develop a tool that takes a bug report, analyzes it, and ranks it on a scale from 1 to 5. Also the tool should give suggestions to the reporter about whatâs missing in the bug report to improve the quality and, consequently, the likelihood of getting the bug fixed sooner.

#Implementation Roadmap:

The implementation includes:

-  Fetch the reports from an issue tracker.
-  Parse and analyze the content of the bug report looking for some important elements like stack traces, test cases, screenshots, etc. 
-  Rank the bug report based on the existence or lack of the important bug report elements.

We have a big sample of bug reports ranked by actual developers. We should be able to develop an expert system and train it using that dataset. 

Another idea is to see if there is a relationship between the quality of the bug report and the fixing time. We can investigate what is the most important element in a bug report that plays the most significant role in fixing the bug.

#Contact
[Haidar Osman](%base_url%/staff/Osman)
