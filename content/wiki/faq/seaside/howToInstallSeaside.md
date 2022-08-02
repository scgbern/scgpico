---
Title: How do I install seaside from scratch?
---
#How do I install seaside from scratch?
- **Q How do I install seaside from scratch?**
- **A** Start the SqueakMap browser.

-  Update map from the net
-  Install seaside (2.8a)
-  Ignore warnings
-  Say "yes" to "Install KOM server?"
-  Pick (say) admin/seaside for server login and password. Now you probably have an old version of seaside loaded
-  Open Monticello browser
-  Create new repository for http://www.squeaksource.com/Seaside
-  Open and load the latest version of seaside
-  Start the websever by evaluating:
```
WAKom startOn: 8080
```

-  Point your browser to
```
http://localhost:8080/seaside
```

