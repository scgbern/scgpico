---
Title: How can we collaborate on a branch that is not master
---
#How can we collaborate on a branch that is not master
**Q: We'd like to collaborate without polluting the master branch. How can I get an experimental branch to my collaborator?**


To see somebody else's branch, it must be:


-  On the correct computer, and
-  Must be checked out there.

Let's look at those in detail.

1. To upload a branch that is not master, you can simply type

```
 git push &mdash;all
```

That will simply copy all your branches to the server. Similarly,

```
 get fetch &mdash;all
```

will download all branches.

2. Once you've got the branch on your computer, we can check it out. We could very simply type the following, though it isn't advisable:

```
 git checkout origin/try
```

It does check out the branch, but now if you change things, git won't know on which branch to store modifications. Git knows these problems, and it's going to complain:


```
       
       You are in 'detached HEAD' state. You can look around, make experimental
       changes and commit them, and you can discard any commits you make in this
       state without impacting any branches by performing another checkout.

       If you want to create a new branch to retain commits you create, you may
       do so (now or later) by using -b with the checkout command again. Example:

         git checkout -b new_branch_name

       HEAD is now at 3ed69fb... Merge branch 'master' of pinocchio.unibe.ch:group01

```

To avoid the warning and the attached problems, use a [tracking branch](http://book.git-scm.com/4_tracking_branches.html). A tracking branch is local branch that is aware of its server counterpart. For example, master is a tracking branch. It knows that its corresponding remote branch is origin/master. So, just type this:

```
 git branch &mdash;track try origin/try
 git checkout try
```

And now you can work on try, commit, push back, and your collaborator will get the changes, all without having to pollute master.
