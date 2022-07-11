---
Title: Timm Gross 
---

Assessing automated software testing with consideration of real-life incidents: A case study

In this study we want to get better insight into how software testing is done in an industry setting. For this purpose real-life incidents from my company are analyzed to answer the following research questions:


- RQ1: Does the discovery of bugs push the writing of tests?
- RQ2: Do existing tests prevent the occurrence of bugs?
- RQ3: Does the architecture facilitate the creation of tests?

To answer these questions we use several different data sources from my work:

- Issue Tracker
- Software repository
- Static code analysis
- Informal talks with the development team

To answer RQ1 we take a randomly selected subset of bugs in the JIRA issue tracker. Then we look at the associated commits and asses the test coverage before and after the bug fix. In conjunction with the static code analysis we expect insights into how unit tests are used in the face of bugs.
RQ2 is going to be answered twofold. First, we look for reoccurring bugs and assess whether new tests were introduced or whether tests would have prevented the re-occurrence, respectively. Second, we look at key statistics from the issue tracker (time to fix, etc.) and the commit history to judge the proneness to bugs of different parts of the system and look at a possible correlation with test writing (-coverage).
The last research question will be answered by manually classifying different parts of the system into "ease of testing" categories.

Some further ideas are for example to assess if there are other testing strategies to improve the testing strategy, for example the introduction of mutation testing, a stricter test driven design approach, more investment in manual testing or in automated integration testing.


