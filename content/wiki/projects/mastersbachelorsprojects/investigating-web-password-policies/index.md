---
Title: Investigating password policies of web services
---
#Investigating password policies of web services
#<font style="color:red;">This project is unavailable since it already has been assigned to a BSc student.</font>
<br><p><font style="color:grey;">

#Introduction
Countless web services require authentication mechanisms, e.g., e-banking, online-shops, forums, or messaging facilities.
In many cases those authentication mechanisms are implemented using individual user name and password combinations.
Whenever somebody implements a web service, security requirements have to be considered such as minimal password length, permitted characters, and expiration date.

#Problem
Since computational power increases continuously, passwords that once seemed strong will become weak over time.
We believe that many developers of such implementations are unaware of the provided security based on those minimal password requirements.

#State of the art
The quality aspect of passwords has been studied intensively [01], the same applies to the password use in the wild [02].
However, previous studies did not thoroughly inspect the password policies used in the wild, which originally lead to the insecure user passwords.

#Task
In this seminar project we want to explore how we can extract the password policies from existing authentication web pages, and assess them to gather a first glimpse into the severity of this problem.
<br>
Your task will consist of:

-  Finding web pages that use password policies
-  Discovering a way to detect and extract those policies automatically
-  Reasoning about the findings (with respect to the minimal password entropy)

*[01] Weir et al.: Testing metrics for password creation policies by attacking large sets of revealed passwords*<br>
*CCS '10 Proceedings of the 17th ACM conference on Computer and communications security*<br>
*published in 2010*

*[02] Inglesant et al.: The true cost of unusable password policies: password use in the wild*<br>
*CHI '10 Proceedings of the SIGCHI Conference on Human Factors in Computing Systems*<br>
*published in 2010*
<br><p><br></p>

#Guiding research questions

-  Can we identify web pages that collect log-in information?
-  What are the technical difficulties in revealing the password policies?
-  Which password policies are prevalent in the wild, and why are they prevalent?
-  Can we establish a security risk indicator for password policies?
<br><p><br></p>



#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)

</font>
