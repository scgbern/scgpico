---
Title: Develect
---
#Develect
**Develect** is a tool and research prototype that models developer expertise using vocabulary found in source code. We use our expertise-model to automatically assign incoming bug reports to developers.

<center>*Who knows about that bug? &mdash; Look at the source, Luke!*</center>

For popular software systems, the amount of daily submitted bugs is very high. The tasks of triaging these incoming reports consumes much time. One of the most time consuming parts of the bug triage is the assignment of a report to a developer with the appropriate expertise. 

We present an approach to automatically find developers who have the appropriate expertise for solving a bug. Our approach models the developer expertise using their contributions to the source code of the project. We use the vocabulary found in source code contributions (i.e. identifier names, comments, etc) to model the expertise of a contributor. 

Currently, we evaluate the approach using Eclipse as case study. We train our system with source code contributions (ie CVS commits) from 2001 up to 2008 and use the resulting expertise-model to assign developers to bug reports. We evaluate precision and recall of our approach by comparing our suggestions to the persons that actually solved, discussed, or closed the bug. For example for a bug that was submitted in May 2005, we would train our system with all commits up to April and then evaluate the suggested developers against those persons that solved the bug in May or later on.

Stay tuned for more information ([RSS Feed](%base_url%/wiki/projects/archive/develect)).

NB: the name Develect is a portmanteau word of *devel*-oper and dia-*lect*.


---

# Download

Develect is written in Smalltalk. The source code can be obtained from the SCG Store:

-  Please follow the instructions on [how to install Moose from scgStore](http://moose.unibe.ch/download/scgstore).
-  Finally, load the Develect package.

# Publications


-  Dominique Matter, Adrian Kuhn and Oscar Nierstrasz, [Assigning Bug Reports using a Vocabulary-Based Expertise Model of Developers](%assets_url%/archive/papers/Matt09aAssigningBugreports.pdf), MSR '09: Proceedings of the 2009 intl. working conference on Mining software repositories, ACM, 2009, pp. to appear.

# People


-  [Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn)
-  Dominique Matter
