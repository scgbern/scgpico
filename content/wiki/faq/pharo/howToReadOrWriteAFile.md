---
Title: How do I read from or write to a file?
---
#How do I read from or write to a file?
- **Q How do I read from or write to a file?**
- **A**
```
(FileDirectory default newFileNamed: 'tmp.txt') nextPutAll: 'stuff'; close.
(FileDirectory default oldFileNamed: 'tmp.txt') contents.
```

