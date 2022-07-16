---
Title: How do I find/browse all sends to super?
---
#How do I find/browse all sends to super?
- **Q How do I find/browse all sends to super?**
- **A** Two alternatives:
```
SystemNavigation default browseAllSelect: [:method | method sendsToSuper ]
SystemNavigation default browseMethodsWithSourceString: 'super'
```

