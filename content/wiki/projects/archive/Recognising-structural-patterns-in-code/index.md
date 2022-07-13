---
Title: Recognising structural patterns in code
---

**RQ:** *Is it possible to automatically recognise language constructs in code of an unknown software language by analyzing structural patterns alone?*

#Motivation:
Given some code in an unknown software language (programming language, markup language etc.), we would like to be able to recognise as many language constructs as possible automatically. As humans we can recognise many such constructs because code has structure. 

The idea of this project to explore how many constructs can be automatically recognised by exploiting “obvious” structure in code, such as indentation and various kinds of parentheses (round, square, curly, angle).

#Approach:
Write a tool that recognises repeating structural patterns in code, such as:
```if (...) { ... } else { ... }
```
Apply the tool to many different kinds of languages and assess how many and what kinds of language constructs can be recognised automatically.

#Challenges:

- Strings, and comments can confound the analysis
- Some languages have multiple constructs that end the same way (i.e. with “end”)
- Special kinds of “parentheses” can be confused with other constructs (e.g. angle brackets)
- Indentation may be inconsistent (e.g. mixed tabs and spaces)

Contact!

-  [Oscar Nierstrasz](%base_url%/staff/oscar) 
-  [Jan Kurš](%base_url%/staff/kursjan)
-  [Haidar Osman](%base_url%/staff/Osman)
