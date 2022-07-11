---
Title: How do I find out which are the new methods implemented in a class?
---

- **Q How do I find out which are the new methods implemented in a class (i.e., not overridden or extended?**
- **A** Example: Integer
```[:aClass| aClass methodDict keys select: [:aMethod |
	(aClass superclass canUnderstand: aMethod) not ]] value: Integer
```
