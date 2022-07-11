---
Title: How do I tell which methods are abstract?
---

- **Q How do I tell which methods are abstract?**
- **A**
```[:aClass| aClass methodDict keys select: [:aMethod |
	(aClass>>aMethod) isAbstract ]] value: Number
```

