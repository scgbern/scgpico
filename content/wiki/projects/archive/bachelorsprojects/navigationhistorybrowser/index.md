---
Title: Navigation History Browser
---

When we navigate a software system in an IDE, we typically open many many windows or tabs to browse various classes, methods and other artifacts. Soon we don't know anymore what we have already browsed in the past and what kind of windows we opened and/or closed. Some empirical experiments we conducted show us that developers browse often the same artifacts several times, often by closing the window containing the artifact and re-open it again after a while.

The whole navigation process developers perform during a coding session is not recorded, there is no means to access the navigation history (ie. in which order developers opened which windows or performed which operations, eg. modifying, creating or removing artifacts). But this navigation history is interesting to exploit, because making it available to the developer could give a much better insight into the the navigation process being performed by the developer. Eventually an explicit and interactive access to the navigation history could help the developer saving time, eg. by giving him a quick access to previously browsed artifacts or by revealing what parts of the system he or she has already been inspected.

The goal of this project is to first record the navigation history (all windows opened, all entities browsed, modified, removed, all operations performed - this has partly been solved) then second to provide an explicit access to this navigation history by implementing a browser allowing developers to access their own navigation history. They are able to re-open an already opened window, to go back to a previous state, to re-perform previous operations, etc. The navigation history typically has the form of a tree (we often "branch" when browsing software, eg. we open a window, browse in it, do some operations, etc., close it again, continue in another window). Hence this navigation history is not linear, increasing the need to have a good tool exploiting it, eg. making explicit these branches.

Contact: [David Roethlisberger](roethlis@iam.unibe.ch)
