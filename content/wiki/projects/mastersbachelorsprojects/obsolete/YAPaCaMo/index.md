---
Title: YAPaCaMo (Yet Another Pharo Changes Model)
---

#Project Idea

Software development process is all about evolution. Source code is changing during development, memory is changing during an execution. And one of the most trivial ways to understand a change between two entities is a [DiffView](https://en.wikipedia.org/wiki/Diff_utility): two textual versions are compared to identify which lines have been changed.

But usually there is much more information than just text. For example source code is a well structured data which can benefit from having a concrete model. In fact there are few of them in [Pharo](http://pharo.org). One of the models is used for versioning and for displaying nice diffs. Another one is used for refactoring, it provides utilities such as joining multiple changes into a composite one, but it lacks a way of visually displaying the difference. And there are many others.

The goal of this project is to create a high level definition of a change based on the requirements of multiple projects (and implement some concrete models to prove the concept). The model may refer not only to source code, but to all types of objects (take a look at [the debugger for failing test](http://www.humane-assessment.com/blog/moldable-gtdebugger/)).


#Contact
[Yuriy Tymchuk](%base_url%/staff/YuriyTymchuk) and [Claudio Corrodi](%base_url%/staff/Corrodi)
