---
Title: Wiretap - Feature and Object Flow Analysis for Java
---
#Wiretap - Feature and Object Flow Analysis for Java
Java Wiretap is a profiler tool that instruments Java applications and allows a reverse engineer to directly control the extraction of behavioral data units (features) and the level of detail of the dynamic data in a well-defined format. 

Java Wiretap captures fine-grained dynamic data such as message semds (activations), field access and instance tracking. The extracted model can then be used by a reverse engineering platform for further analysis in reverse engineering environments like Moose extended with DynaMoose for Feature Analysis and Object Flow Analysis, Java Wiretap allows the user to trace different triggerable actions of an application, each representing different features, which can then be treated as distinct feature entities when performing featyre analysis. To control the large volume of detailed dynamic information, Java Wiretap allows selective instrumentation of an application at package level.

For more details see [http://www.iam.unibe.ch/~scg/Archive/Projects/Fier07a.pdf](http://www.iam.unibe.ch/~scg/Archive/Projects/Fier07a.pdf)
