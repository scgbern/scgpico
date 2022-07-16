---
Title: Assessing comment quality automatically  in Pharo
---
#Assessing comment quality automatically  in Pharo
#Introduction
Code comments serve as primary design documentation in Pharo and contain different types of information which help other developers to understand and use the class.  
However, simple typos, inconsistent use of punctuations, lack of standard styles, and inconsistent text organization can make the text hard to read and understand.
Measuring the readability and complexity of the text can help point out the problems and encourage developers to fix the issues in the earlier stages, consequently helping them to improve the quality of comments.
Similar to various code readability metrics [ Scal18a], text readability metrics [Kinc75a] also exists but often the class comments in Pharo are a mixture of code snippets and text and refer domain-specific vocabulary thus requires a combination of metrics to evaluate the readability of the text.

#Goal
Identify the different metrics suitable for evaluating the complexity of Pharo comments and then evaluate the complexity of code comments.

#Steps

-  Collect various metrics to evaluate code comments.
-  Test the selected metrics on Pharo comments.
-  Adjust the metrics to measure the complexity of comments.
-  Evaluate the results.

#Further Reference Material
[Assess Pharo and Python class comments](/download/softwarecomposition/2020-12-08-Ludovic-AssessCommentsQuality.pdf) (seminar)

#Contact
[Pooja Rani](%base_url%/staff/Pooja-Rani)
