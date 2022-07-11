---
Title: Android: Targeted attacks supported by recovered data structures of web API's
---

#Introduction
Popular mobile applications increasingly utilize client-server implementations, e.g., for social interactions and other cloud services, and within these implementations, HTTP GET URL, JSON, and XML data structures became quite popular for data transmissions.

#Problem
As we discovered in prior work, many developers are not aware of potential shortcomings caused by these publicly accessible interfaces, such as data leaks and denial of service attacks.
Moreover, Android allows adversaries to decompile apps into source code, and eventually to reconstruct data structures, such as JSON entities, used by the interfaces.

#State of the art
Generic recommendations and guidelines for web APIs are publicly available, but as we suspect the perceived value for customers is very low since they are invisible to end users. Presumably, the security audits are regularly neglected or wholly abandoned.

#Task
First, you might want to have [here](http://scg.unibe.ch/download/pgadient/web-api-evaluation-concept.jpg) a quick look on the conceptual ideal.
The goal of this project is to assess the potential risks caused by server-side interfaces that originate from these client-server implementations and to raise the awareness of potential threats.
The recommended approach is first to rebuild the used data structures (e.g. JSON objects) from source code, before building a data model on top that is capable of correlating variable names and structures with values or value ranges that show a high likelihood.
Finally, with the help of the data model, we can drive further targeted attacks on a large scale of Android apps' web APIs to determine possible hazards.

The focus of this project lies on the extraction of data structures from source code, [AST](https://en.wikipedia.org/wiki/Abstract_syntax_tree) traversal, data model creation and its application with [ML](https://en.wikipedia.org/wiki/Machine_learning), and finally, large-scale assessment of web API's.
<br><p><br></p>

#Guiding research questions

-  How can we extract the data structures of web APIs form source code?
-  How can we build a data model that reflects the correlation between variable names and values to estimate those for actual variables used in apps?
-  To what extent threats can emerge by providing insecure web interfaces?
<br><p><br></p>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)
