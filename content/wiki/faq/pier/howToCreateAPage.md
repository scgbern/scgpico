---
Title: How do I programmatically create a new Pier page?
---
#How do I programmatically create a new Pier page?
- **Q How do I programmatically create a new Pier page?**
- **A** Do something like this:
```
parent := PRKernel instances anyOne root lookupPath: '/'.
child := (PRPage named: 'newChild').
parent addChild: child.
child contents: 'tis a far better thing ...'.
```
