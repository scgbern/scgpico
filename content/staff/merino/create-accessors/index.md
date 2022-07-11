---
Title: Create-accessors
---

```createAccessors
	self instVarNames do: [ :var |
		self compile: var, String cr, '	^ ', var.
		self compile: var, ': aValue', 
			String cr, ' ^', var, ' := aValue'.
	]
```
