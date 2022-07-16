---
Title: Augmenting Diff View With External Code Properties
---
#Augmenting Diff View With External Code Properties
#Project Idea
Developers use diff view to understand the changes between two versions of code. While diff focuses mainly on textual changes, software itself is not about text. By providing additional information like warnings about possible bugs we can help developers to understand a purpose or identify side effects of the change. 

The idea of this project is to integrate already available information about external properties of software (such as code quality critics) into a diff view.

#Challenges

-  Obtaining external properties from a non-current version of a software.
-  Figuring out how to display the external properties on the changed code.
-  Analyzing whether the current model of external properties is suitable for a diff viewer.
-  Investigating how the enhanced diff influences developers. E.g. whether the developer that sees that he's about to commit a bad-styled code will improve it. 

#Environment
The project will be done in [Pharo](http://pharo.org). The external properties model [Renraku](https://github.com/Uko/Renraku) is already used by the default Pharo tools (code browser, inspector, spotter) with Ð° help of the extensions provided by [QualityAssistant](https://github.com/Uko/QualityAssistant)

#Impact
If implemented well, the enhanced diff will replace the default diff in core [Pharo](http://pharo.org) distribution.

Depending on the tackled challenges, this project can serve for seminars as well as  bachelors or master students.

#Contact
[Yuriy Tymchuk](%base_url%/staff/YuriyTymchuk) and [Claudio Corrodi](%base_url%/staff/Corrodi)
