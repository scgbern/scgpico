---
Title: Where are the checked objects coming from?
---
#Where are the checked objects coming from?
#Project Idea:

NullPointerException in Java and similar languages is a serious problem that causes programs to fail. Usually, programmers check if a certain object is null before invoking methods on it. Objects can be local variables, member variables, method parameters, and method returned results. We would like to explore and quantify the categories of the checked-for-null objects.

#Implementation Roadmap:
We have already the dataset that contains many Java projects. We also have a database of all the methods that contained bugs in those projects. So the data collection part is already done.

The next phase is parse every Java method that contains a null check, specify the object that is checked, then decide its category (from the categories above). This process can be done programmatically, manually, or using a mix of both.

#Results:
[Tracking Null Checks in Open-Source Java Systems](/scgbib?&query=Tracking+Null+Checks+in+Open-Source+Java+Systems)
#Contact: 
[Haidar Osman](%base_url%/staff/Osman)
