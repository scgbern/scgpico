---
Title: Migration from insecure to secure API uses
---

#<font style="color:red;">This project is unavailable since it already has been assigned to a BSc student.</font>
<br><p><font style="color:grey;">
#Introduction
Distinguished security audit tools are nowadays omnipresent, together with constrained compliance checks, e.g., code confirmation checks, that are built into most popular IDE's.
One specific example of such a tool is our Security Code Smell detection plug-in for Android Studio.

#Problem
These tools and checks frequently lack proper support for guiding developers through the process of fixing an issue.

#State of the art
Our Security Code Smell detection tool is no exception, thus it is unable to apply any mitigation strategies, nor basic quick fixes for the reported smells.

#Task
The goal is first to elaborate on the insecure API mitigation strategies of existing work before the Android Studio IDE plug-in gets augmented with quick fixes and other mitigation strategies. For example, when developers use broadcasted intents to exchange messages within an app, they should use a LocalBroadcastManager instance to send such broadcasts instead. A first implementation could simply provide a quick fix that adds the line

LocalBroadcastManager.getInstance(this).sendBroadcast(intent);

to the project. However, this approach contains several flaws such as "this" not considering the appropriate context or the parameter which could be illegitimate.

The focus of this project lies in mitigation engineering and the Android Studio plug-in extension.
<br><p><br></p>

#Guiding research questions

-  What are the mitigations for Android Security Smells?
-  How and to what extent the IDE supports mitigation strategies?
<br><p><br></p>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)
</font>
