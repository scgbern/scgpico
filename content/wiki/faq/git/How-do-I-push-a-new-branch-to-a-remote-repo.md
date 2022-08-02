---
Title: How do I push a new branch to a remote repo?
---
#How do I push a new branch to a remote repo?
- **Q How do I push a new branch to a remote repo?**
- **A**
If you locally create a new branch and then try to pull or push, git will complain, since that branch does not exist remotely. To push a new branch test, do this:
```
git push origin master:test
```
