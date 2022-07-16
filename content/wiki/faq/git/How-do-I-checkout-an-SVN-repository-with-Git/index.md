---
Title: How do I checkout an SVN repository with Git?
---
#How do I checkout an SVN repository with Git?
- **Q How do I checkout an SVN repository with Git?**
- **A**
```
git svn clone https://www.iam.unibe.ch/scg/svn_repos/Papers/DSL
```
This initializes a local Git repository linked to the Subversion repository. The first time it takes a while to pull in all the revisions from the server, but then you can do all work locally using the standard Git tools: diff between arbitrary versions, blame people, work with branches, revert changes, tag versions, browse the logs, etc.

Committing changes is local, as with normal Git. You can do that as often as you like. It does not touch the SVN repository.

```
git svn rebase
```

updates and merges changes from the SVN server (like "git pull") and

```
git svn dcommit
```

pushes back your changes (like "git push") to the SVN server as individual SVN commits. They claim in the documentation that it is totally transparent, SVN users do not see that you are using Git.

See: [http://www.kernel.org/pub/software/scm/git/docs/git-svn.html](http://www.kernel.org/pub/software/scm/git/docs/git-svn.html)
