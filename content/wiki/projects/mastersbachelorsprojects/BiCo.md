---
Title: 'BiCo: Big Commit Analysis'
---
#BiCo: Big Commit Analysis
#Project Idea
When doing research in software evolution, researchers often extract commits (from GIT or SVN) and analyze how the code changes. However, commits can vary in size and type. For instance, a refactoring process can touch many files and change many lines of code, but fixing a typo in the comments touches only one file. Also commits are not always uni-purpose. Sometimes one commit may include a bug fix, a new feature, and a code refactoring. This variety of size and purpose of commits introduces difficulties when analyzing the evolution of software systems.

The idea of this project is to develop a tool that extracts the commits of a project from Git and then categorize into purposes (bug fix, feature, refactoring, etc) commits. Then if one commit has more than one purpose (we call it a big commit), the tool should be able to determine what code change corresponds to what purpose.

One way to approach the categorization problem is to analyze the commit message, textually, and figure out what the commit is about. Another way is to link commits to the reports in the issue trackers (Jira, Bugzilla, ...) and figure out what the commit is about from type of the report itself. For breaking up big commits, one can build a statistical model starting from the small uni-purposed commits. Then when a file changes in a big commit, the tool can output the probability of the purpose of the change based on the statistical model. For instance, the tool can say this file change is a refactoring with a 60% confidence and a bug fix with a 40% confidence.

This project can be scaled down to a seminar project, or up to a master thesis, depending on the capabilities of the tool and the sophistication of the analysis.

#Contact
[Haidar Osman](%base_url%/staff/Osman) and [Claudio Corrodi](%base_url%/staff/Corrodi)
