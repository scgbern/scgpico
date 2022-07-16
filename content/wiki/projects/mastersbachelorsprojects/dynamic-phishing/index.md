---
Title: Dynamic phishing
---
#Dynamic phishing
#<font style="color:red;">This project is unavailable since it already has been assigned to a BSc student.</font>
<br><p><font style="color:grey;">
#Introduction
When is the last time you received a phishing email?
Did you ever fall for a scam campaign?
Have your credentials already been leaked?

We continuously strive to improve software security based on a better understanding of the software risks and threats by implementing prototypes in dynamic languages.
In this project, we want to shed light on different phishing schemes, their flexibility, and likelihood of being unnoticed by victims.
Traditional internet surf sessions are non-deterministic:
Highly dependent on the surfers' environment and mood, their web site visits become completely different and (almost) unpredictable.
Therefore, such behavior requires phishing pages that can be built on demand.

#Problems
A few problems you'll be confronted with:

-  Just in time downgrading of HTTPS connections
-  Dynamic injection of phishing scripts
-  Avoidance of user interface glitches

#State of the art
In the internet, one can find countless step-by-step guides on how to turn a regular page into a phishing site [1].
In addition, there exist many professional phishing frameworks [2] [3] [4], however, they all require hand-crafted phishing site templates to perfectly suit the needs of the creators.
We found no tool which can build phishing web sites on demand without any manual intervention.

#Task
In this project, we want to explore the limitations, difficulties, and likelihood of tricking people into providing their credentials to a dynamically generated phishing web site.<br>

Your task will consist of:<br>

-  Investigation of phishing techniques
-  Tracking URL requests across clients (based on the clients' IP addresses and DNS queries)
-  Implementation of a phishing service that can deliver on demand a phished version of a web site for a requested URL
-  Evaluation

#Guiding research questions

-  How can phishing be performed?
-  Which user interactions on a phishing site are relevant?
-  What is a flexible software architecture for phishing?
-  How can we trick clients to land on an unintended web page?
<br>

#References
[1] [How to create a phishing page (in 11 steps)](https://www.hackchefs.com/create-phishing-page/)<br>
[2] [Gophish](https://github.com/gophish/gophish)<br>
[3] [Ninja Phishing Framework](https://sourceforge.net/projects/ninjapf/)<br>
[4] [Phishing Frenzy](https://www.darknet.org.uk/2016/04/phishing-frenzy-e-mail-phishing-framework/)
<br><br>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)

</font>
