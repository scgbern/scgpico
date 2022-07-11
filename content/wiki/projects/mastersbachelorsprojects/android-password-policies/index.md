---
Title: Android: Investigating password policies found in Android apps
---

#<font style="color:red;">This project is unavailable since it already has been assigned to a seminar student.</font>
<br><p><font style="color:grey;">
#Introduction
How many different apps do you have on your smartphone, and how many of them require a user account to get access to their services?
Did you ever think about the complexity of their password policies?
Do they even guarantee strong passwords?

We are on a mission to improve the understanding of Android app development in order to facilitate developer tools which better suit the developers' needs.
We want to gather insights regarding the use and implementation of password policies in Android apps.
Unfortunately, the extraction of password policies is a non-trivial task:
Developers frequently use custom code, configurations, and arbitrary frameworks to deliver seamless user experiences.
Hence, manual investigations are required.

#Problems
A few problems you'll be confronted with:

-  Different programming languages (Kotlin, Java, JavaScript, HTML/CSS)
-  Decompiled app code can be incomplete
-  Dynamic analysis requires the manual creation of user accounts on the vendor's behalf
-  Password policies are hidden in the code or within natural language

#State of the art
Much research has been carried out to investigate the security of passwords used in practice [1] [2].
Interestingly, the used password complexity did not change over time if users were free to choose their own, mostly insecure, passwords.
On the other hand, researchers found that if inappropriate password policies are set into place, the amount of wasted working time can severely impact the employees' productivity [3].
Hence, it is important to define ``appropriate\'' password policies which are not too complex, yet they can provide basic security.
However, we do not have any information regarding the use of password policies in Android mobile apps.

#Task
In this seminar project, we want to explore the implementation and use of password policies in Android apps.<br>

Your task will consist of:<br>

-  Separation of apps which use accounting features
-  Manual evaluation of the password policies found in such Android apps
-  If feasible: creation of an extraction tool which automatically extracts password policies from Android apps
-  Evaluation of the found policies

#Guiding research questions

-  What are the password policies used in Android apps, and how are they implemented?
-  How can we detect such policies in apps?
-  How does an ``appropriate\'' password policy for mobile apps look like? E.g., what about different password policies depending on the use of app features?
<br>

#References
[1] Morris and Thompson, Password security: A case history, 1979 ([PDF](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.128.1635&rep=rep1&type=pdf))<br>
[2] Zviran and Haga, Password security: an empirical study, 1999 ([PDF](https://www.jstor.org/stable/pdf/40398409.pdf))<br>
[3] Inglesant and Sasse, The true cost of unusable password policies: password use in the wild, 2010 ([PDF](http://discovery.ucl.ac.uk/102754/1/Sasse_Inglesant_CHIfinalfinal.pdf))
<br><br>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)


</font>
