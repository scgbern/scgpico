---
Title: Git Accessor
---
#Git Accessor
The goal of this project is to implement an object-oriented interface to Git, so that one can read and manipulate a repository from Smalltalk:

```
 git := GitRepository on: '~/example.git'.
 git add: (GitFile named: 'hello.txt' contents: 'hello world').
 git commit: 'initial commit'.
 git tag: 'foo'.
 git commits. -> { GitCommit named: 'initial commit' }
 git branches. -> { GitBranch named: 'master' }
 git tags. -> { GitTag named: 'foo' }
```

The project includes the implementation of a flexible and extensible object model that accesses and manipulates the internal directory and file structure of Git. The result of this project would be a new highly efficient backend for Monticello 2. Furthermore the Moose platform could benefit from a new way to import and export models.

Contact: [Lukas Renggli](%base_url%/staff/lukasrenggli)
