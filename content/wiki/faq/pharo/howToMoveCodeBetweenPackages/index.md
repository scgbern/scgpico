---
Title: How do I move all classes and extension methods from one package to another?
---

- **Q How do I move all classes and extension methods from one package to another?**
- **A**
```| pkg |
pkg := PackageInfo named: 'Saphir'.
pkg classes do: [:class | class category: 'Coral' ].
pkg methods collect: [:method |
	method actualClass organization
		classify: method methodSymbol
		under: #'*coral' ]
```

