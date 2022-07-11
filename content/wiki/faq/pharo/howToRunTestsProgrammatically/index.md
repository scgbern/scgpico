---
Title: How do I programmatically run tests of specific categories?
---

- **Q How do I programmatically run tests of specific categories?**
- **A**
```| tr |
tr := TestRunner new.
ToolBuilder open: tr.
tr
	categoryAt: (tr categoryList indexOf: 'SCGPier') put: true; "etc"
	selectAllClasses;
	runAll.
```

