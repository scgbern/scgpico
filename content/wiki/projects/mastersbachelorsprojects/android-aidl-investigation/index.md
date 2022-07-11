---
Title: Investigation of apps Android AIDL use
---

#Introduction
The [Android Interface Definition Language (AIDL)](https://developer.android.com/guide/components/aidl) is used to define interfaces available for [Android Inter-Process Communication (IPC)](https://stackoverflow.com/questions/5740324/what-are-the-ipc-mechanisms-available-in-the-android-os) throughout many apps.
There is a positive trend of apps relying on other app's data, hence we expect that the use of IPC based on AIDL increases substantially for more recent apps due to the required inter-app communication.

#Problem
As always when data is shared among apps data leak concerns could arise; especially by using the AIDL framework.
Since the AIDL relies on the regular Binder framework for IPC, the potential risks that emerge from Binder also apply to AIDL interfaces.
You can find [here](https://stackoverflow.com/questions/6686686/android-binder-security) an interesting discussion related to Binder security.

#State of the art
Much work has been published regarding the misuse of ICC in malicious apps, but only a fraction regarding AIDL interface communication.
In addition, prior AIDL-related work is limited to detection of malicious patterns in online ICC communication but does not proactively assess the risk associated with .aidl files and its implementations offline.

#Task
The goal of this seminar project is in the first step to analyze and report the AIDL uses in a large app repository to evaluate the potential security risks implied by AIDL.
The corpus containing the apps will be provided to the student upon the start of the project.<br>

With that data, the task will consist of:<br>

-  Separation of apps that use AIDL features
-  Investigation of AIDL documentation and related code
-  Evaluation of potential AIDL-related security risks
<br><p><br></p>

#Guiding research questions

-  Where are AIDL interfaces used?
-  What is the purpose of those interfaces? Is their use legitimate, or should other techniques be preferred?
-  Do AIDL implementations show some interesting security-related characteristics?
<br><p><br></p>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)
