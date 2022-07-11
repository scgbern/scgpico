---
Title: How do I browse all super sends within a hierarchy?
---

- **Q How do I browse all super sends within a hierarchy?**
- **A** The old way:
```class := Collection.
SystemNavigation default
  browseMessageList: (class withAllSubclasses gather: [ :each |
    each methodDict associations
      select: [ :assoc | assoc value sendsToSuper ]
      thenCollect: [ :assoc | MethodReference class: each selector: assoc key ] ])
  name: 'Supersends of ' , class name , ' and its subclasses'
```
The refactoring browser way:
```((BrowserEnvironment new forClasses: (Collection withAllSubclasses))
  selectMethods: [:method | method sendsToSuper])
  open
```
