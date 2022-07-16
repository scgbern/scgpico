---
Title: Return Null Analysis
---
#Return Null Analysis
#Project Idea

In a previous study, we found out that NullPointerExceptions are very serious in Java projects. And also the most frequent bug-fix code change is actually inserting a null check in front of the statement that caused the exception.

After deeper investigation, we found that the checked object during the fix is actually a method result. This means that “return null” in such methods might be the problem.

We would like to investigate the correlation between the methods returning null and the bugs resulting from calling those methods. Also we want to investigate the scenarios where “return null” can be replaced with throwing an exception and the scenarios where “return null” is unavoidable.

#Contact
[Haidar Osman](%base_url%/staff/Osman)
