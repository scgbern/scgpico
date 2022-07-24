---
Title: The life of a bug report
---
#The life of a bug report
#<font style="color:red;">This project is unavailable since it already has been assigned to a BSc student.</font>
<br><p><font style="color:grey;">
#Introduction
Do you watch the news and recently saw a report about a devastating vulnerability disclosure?
Do you follow security blogs to be prepared for eventual patch waves?
Are your software and devices up to date?

In our group, we are commited to improve software security and work on different aspects such as project management, engineering, release planning, and maintenance.
In this project we want to shed light on the update mechanisms used by vulnerability database providers, and the evolution of their records.
However, we lack the required information regarding the spread of disclosures between the different platforms, and their history.

#Problems
A few problems you'll be confronted with:

-  Accessing historical records
-  Parsing information from JSON and HTML/CSS content
-  Book-keeping of records and their correlation between different providers

#State of the art
Several online vulnerability databases already exist [1] [2] [3], each containing only a fraction of all the available vulnerability disclosure reports.
Some databases provide ready to download data feeds, others provide web APIs, and finally, there exist providers which only publish their reports in an HTML manner.
None of the database providers prepares any historical data ready to work with; manual effort is always required.

There exists work in which researchers analysed historical data and built machine learning models on top [4].
However, only one database and basic features have been used, e.g., time span between reportings and vulnerability score.

#Task
In this project, we want to explore the security reports and their spread across major online databases, and if possible, predict trends regarding future changes.<br>

Your task will consist of:<br>

-  Fetching data from vulnerability databases
-  Reconstructing a change history for each record found in the databases
-  Comparison of different vulnerability scores
-  Evaluation of results; searching for any trends

#Guiding research questions

-  What are the major online vulnerability databases?
-  What information can be obtained from the databases?
-  How can we retrieve historical data?
-  How can we track reports across different vulnerability databases?
<br>

#References
[1] [National Vulnerability Database](https://nvd.nist.gov/)<br>
[2] [CVE Mitre](https://cve.mitre.org/)<br>
[3] [KB Cert](https://www.kb.cert.org/vuls/)<br>
[4] Zhang, Caragea, and Ou, An empirical study on using the National Vulnerability Database to predict software vulnerabilities, 2011 ([PDF](http://people.cs.ksu.edu/~xou/publications/dexa11.pdf))
<br><br>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)

</font>
