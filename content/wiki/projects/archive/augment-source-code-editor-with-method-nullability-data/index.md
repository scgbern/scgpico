---
Title: Augmenting a Source Code Editor with Method Nullability Data
---

#Project Idea

<div align="justify">

In an empirical study we have measured how often which methods are checked for null.
We have built an Eclipse plugin that shows nullability on invoked methods in the source code editor.
Yet, the existing plugin is just a proof of concept and not very useful, as it shows the nullability information on demand only.
The goal of this project is to implement a plugin for a source code editor, which highlights potentially missed or unnecessary null checks.
The raw method nullability data is already collected and is provided.
The data lists the nullability for Java methods which are tracked to their defining Maven artifact.
The plugin would connect the Maven dependencies of the opened Java project with the global nullability data.
The proof of concept plugin is implemented for Eclipse, but other target IDEs are possible if desired.

</div>

#Contact
[Manuel Leuenberger](%base_url%/staff/ManuelLeuenberger)
