---
Title: Senseo
---

Senseo is an Eclipse plugin enhancing the Java perspective with various dynamic metrics such as number of objects created or amount of memory allocated in particular methods.
Moreover, it enriches the source code views with precise information about message sends such as receiver or argument types, or number of invocations occurred at runtime.
These metrics get aggregated over several system runs.

![Senseo Overview](%assets_url%/files/6a/oqck8eo1wzi0sqko2s27d2ux1kt2oy/senseo.png)

Senseo uses [Major](http://www.inf.usi.ch/projects/ferrari/MAJOR.html), a tool for Aspect weaving in the standard Java Class Library, to gather dynamic information. Gathering dynamic information with Senseo is as easy as executing a Java application within Eclipse. Moreover, Senseo provides means to manage the gathered information and to store dynamic information from an execution. Furthermore, Senseo continuously updates visualizations and enrichments with the gathered information.

To install and use Senseo please follow the [Users Guide to Senseo](%base_url%/research/senseo/SenseoUsersGuide)

This [Research Paper](http://scg.iam.unibe.ch/archive/drafts/Roet09X-Senseo-DynInfo-Eclipse.pdf) published at ICSM 2009 explains Senseo, its techniques and principles in more detail.

#Publications
[Fixed Query](%assets_url%/scgbib/?query=*&filter=Year)
