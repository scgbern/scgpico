---
Title: Android: Scrutinizing web APIs used in mobile apps
---

#<font style="color:red;">This project is unavailable since it already has been assigned to a MSc student.</font>
<br><p><font style="color:grey;">
#Introduction
Has the smartphone in your pocket become the driver of your daily life?
Did you ever wonder which data the installed apps leak in the background?

We are on a mission to reveal the hidden secrets in the (sometimes) nasty byte code of Android apps from professional developers.
However, inspections have become a non-trivial task, because many developers started to rely on improved security for data transmissions ([HTTPS](https://en.wikipedia.org/wiki/HTTPS)).

#Problems
A few problems you'll be confronted with:

-  Live-patching of certificate validation measures in apps<br>(so that they will ignore incomplete chains of trust)
-  App configuration patching<br>(our own certificates need to be implanted and exposed to the operating system)
-  Anti-tampering protection

#State of the art
There exist tools which can remove security measures on the fly during execution [1][2], or statically by manipulating the compiled app code [3].
However, static measures suffer from inherent limitations, e.g., the manipulated apps require a proper resigning which is not possible without the developer's private key.

We found that no tool provides a ``does it all\'' solution.

#Task
In this seminar project, we want to explore the possibility of bypassing HTTPS encryption, and if possible, implement strategies against such protections.<br>

Your task will consist of:<br>

-  Manual investigation of web communication in Android apps
-  Manual patching of apps to override the HTTPS security controls
-  Automation of the manual patching
-  Evaluation

#Guiding research questions

-  How does HTTPS enforce security?
-  What makes a certificate secure?
-  How can we override HTTPS security controls in Android apps?
-  How can we manipulate Java classes during run time?
<br>

#References
[1] [Frida](https://www.frida.re/), a hybrid framework for mobile app investigation<br>
[2] [Objection](https://github.com/sensepost/objection), a framework based on Frida to attack HTTPS protection measures<br>
[3] [Explanation](https://medium.com/@felipecsl/bypassing-certificate-pinning-on-android-for-fun-and-profit-1b0d14beab2b) on how Android apps can be repackaged to execute arbitrary commands
<br><br>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)

</font>
