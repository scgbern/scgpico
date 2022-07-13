---
Title: Moldable Spotter: a unified search interface for IDEs
---

Program comprehension requires developers to reason about many kinds of highly interconnected software entities. Dealing with this reality prompts developers to continuously intertwine searching and navigation. Nevertheless, current integrated development environments (IDEs) address searching by means of many independent and disconnected search tools. This not only impedes developers from reusing search results produced by one search tool as input for another search tool, but it also makes it difficult to find appropriate search tools, in the multitude of other tools provided by an IDE.

To address this problem we start from the realization that having disconnected search tools within an IDE, each designed to work in isolation and on different data types, is part of the problem. We propose Spotter, a model for expressing and combining search tools in a unified way. Spotter has two main goals:


-  Provide a uniform yet moldable interface that can work on any object,
-  Handle searching through arbitrary levels of object nesting.

<iframe src="//www.slideshare.net/slideshow/embed_code/key/JwZ8VZwIUDYSNc" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> </div>

#Spotting packages, classes, pragmas, implementors

Searching for classes or packages is a common code search requirement. Although very similar in nature, these two searches are too often supported through separated search interfaces. Spotter integrates them easily in one. In the example below we see the basic interface that is triggered via Cmd\+Enter. On top, the user can enter a textual query, and below the search is executed through multiple search categories. In our case, entering GTSpo, leads to matching 39 classes (of which only 5 are shown) and 1 package. For each element, the matching substring is underlined.

The interface is fully controllable through the keyboard. The user can move with ArrowUp/ArrowDown between items or Cmd\+Shift\+ArrowUp/ArrowDown through categories. At the same time, the search field has the focus, so the user can switch seamlessly between selecting items and refining the search. Pressing Enter reveals the code browser.

![http://humane-assessment.com/pierfiles/f6/6gfexikdzcb8pftsddn1yrxmpho5vn/gtspotter-packages-classes.png](http://humane-assessment.com/pierfiles/f6/6gfexikdzcb8pftsddn1yrxmpho5vn/gtspotter-packages-classes.png)

While packages and classes are typical structural entities, annotations can be equally important. Spotter searches for annotations (named `pragmas' in the target language for our implementation) in the same interface. In this case, pressing Enter opens an inspector on the PragmaType object.

![http://humane-assessment.com/pierfiles/a9/s70nmj4qqq1akr6tm4kc99t0l9af40/gtspotter-pragmas.png](http://humane-assessment.com/pierfiles/a9/s70nmj4qqq1akr6tm4kc99t0l9af40/gtspotter-pragmas.png)

Searching for implementors is another common code search use case. Until now, the way to search for implementors in Pharo is to open a Playground/Workspace, enter a the symbol, press Cmd\+m and then close the Playground/Workspace window. Spotter makes it easier.

![http://humane-assessment.com/pierfiles/e4/piep15dubk8xxh77ws084qq11bidbj/gtspotter-implementors.png](http://humane-assessment.com/pierfiles/e4/piep15dubk8xxh77ws084qq11bidbj/gtspotter-implementors.png)

#Spotting menu items
It's not just code that is interesting for search. Finding a tool is a search activity as well. That is why, the Spotter offers, by default, through menu items.

![http://humane-assessment.com/pierfiles/bc/cdcgbhpdvgiza5uyencpij99tff95h/gtspotter-default-menu.png](http://humane-assessment.com/pierfiles/bc/cdcgbhpdvgiza5uyencpij99tff95h/gtspotter-default-menu.png)

#Spotting past Playground pages

GTPlayground remembers all snippets ever used within the image. This is nice, but it can quickly become hard to find a previous snippet. That is why, Spotter makes this list searchable. Pressing Enter reveals a Playground populated with the desired code.

![http://humane-assessment.com/pierfiles/45/58cww910pi7c3u1c3s1eu2tfy5vyn3/gtspotter-playground.png](http://humane-assessment.com/pierfiles/45/58cww910pi7c3u1c3s1eu2tfy5vyn3/gtspotter-playground.png)

#Spotting public Playground pages

Since a while, the GTPlayground has the ability of publishing the contents to the sharing service available at: [http://ws.stfx.eu](http://ws.stfx.eu). However, until now, the playground offered no easy way to load the contents of a published page. Spotter fixes the situation: simply pasting the url offers an object with the remote page. Pressing Enter opens a playground with the page contents.

![http://humane-assessment.com/pierfiles/52/u8absjjswwwycz790pgbsxvz4nnxj5/gtspotter-stfx.png](http://humane-assessment.com/pierfiles/52/u8absjjswwwycz790pgbsxvz4nnxj5/gtspotter-stfx.png)

#Spotting the last spotted objects

Spotter can find various types of objects rather fast. Yet, often we just want to get to the objects we just visited recently. It is for this reason that Spotter offers the history of previously spotted objects by default. For example, the picture below shows a history of 5 most recent objects.

![http://humane-assessment.com/pierfiles/f2/4qxs2p5fx72h35j05xrwfb7r9l0r67/gtspotter-history.png](http://humane-assessment.com/pierfiles/f2/4qxs2p5fx72h35j05xrwfb7r9l0r67/gtspotter-history.png)

#Diving inside an object

Typical IDE search tools behave like general search tools in that they offer only one level of search. However, software systems have structure, and we often need to be able to search inside a found object. To this end, Spotter allows the user to dive in an object and continue searching through the same interface. This is accomplished by pressing Cmd\+RightArrow.

For example, the below picture shows the case of going inside the Spotter class. The context of the current search is shown in the breadcrumb on top of the window. For this method, the user can search through class related facts such as methods, variables or references.

![http://humane-assessment.com/pierfiles/47/2h3u5s75ssrwaqtxnb8ha2jn4due42/gtspotter-dive-class.png](http://humane-assessment.com/pierfiles/47/2h3u5s75ssrwaqtxnb8ha2jn4due42/gtspotter-dive-class.png)

Diving in a method, again offers the same interface through which the user can search for senders or implementors.

![http://humane-assessment.com/pierfiles/b3/6o3q97f5vbg2ltilm5fil1p6b8o4u6/gtspotter-dive-class-method-sender.png](http://humane-assessment.com/pierfiles/b3/6o3q97f5vbg2ltilm5fil1p6b8o4u6/gtspotter-dive-class-method-sender.png)

Diving in a sender reveals the senders and implementors. Thus, this simple interface provides the basic block for replacing other interfaces that are dedicated to showing the list of senders, implementors or references in a separate window.

![http://humane-assessment.com/pierfiles/d3/ip0cr4lel83giguvrl5sda56da7qx1/gtspotter-dive-class-method-sender.png](http://humane-assessment.com/pierfiles/d3/ip0cr4lel83giguvrl5sda56da7qx1/gtspotter-dive-class-method-sender.png)

But, Spotter is about objects, not about code. To exemplify the implication of this, let's consider the typical use case of looking for a file somewhere in the directory structure inside the current directory. In the below picture, the main Spotter finds a directory.

![http://humane-assessment.com/pierfiles/3e/i0cn3jd9fl5w9olsenwnl4iqzbn5qs/gtspotter-folder.png](http://humane-assessment.com/pierfiles/3e/i0cn3jd9fl5w9olsenwnl4iqzbn5qs/gtspotter-folder.png)

Diving in the directory, allows the user to continue searching for deeper items.

![http://humane-assessment.com/pierfiles/53/oco7ib3sgutkdhdrpafx5y5s9fe66h/dive-folder.png](http://humane-assessment.com/pierfiles/53/oco7ib3sgutkdhdrpafx5y5s9fe66h/dive-folder.png)

#GTSpotter
The GTSpotter implements the ideas behind the Moldable Spotter model as part of the [GToolkit](http://gt.moosetechnology.org/) project. It is available in the latest Moose image which can be downloaded from [the Moose website](http://www.moosetechnology.org). It is also integrate in [Pharo](http://pharo.org).

#Spotting your objects
The existing implementations already comes with more than 100 various categories that support a rather extensive set of common search actions. However, the true power of GTSpotter comes from it being moldable.

Custom searches for an object are defined as extension methods in class of that object.

By default, the main GTSpotter opens on itself. Thus, all the top level categories are defined as extensions of the GTSpotter class. For example, searching for all classes in the image, is achieved as follows:

```GTSpotter>>spotterForClassesFor: aStep
     <spotterOrder: 10>
     aStep listProcessor
               allCandidates: [ Smalltalk allClasses ];
               title: 'Classes';
               matchSubstring;
               itemIcon: #systemIcon
```

Similarly, searching for the instance side methods inside a class, is achieved through an extension method of Class:

```Class>>spotterMethodsFor: aStep
     <spotterOrder: 10>
     aStep listProcessor
               title: 'Instance methods';
               allCandidates: [ self methods ];
               itemName: [ :method | method selector ];
              matchSubstring
```

The histogram below shows the the size distribution (in LOC) for 106 custom extensions.
![http://scg.unibe.ch/download/moldablespotter/Spotter_Distribution.png](http://scg.unibe.ch/download/moldablespotter/Spotter_Distribution.png)



On average an extension takes 8 lines of code. That means that you can get your objects to be equally searchable with just a handful of lines of code.

#Authors

| | |
|---|---|
|[Aliaksei Syrel](https://twitter.com/AliakseiSyrel)|
|[Andrei ChiÈ](http://andreichis.com)|
|[Juraj Kubelka](http://juraj-kubelka.cz)|
|[Stefan Reichhart](https://twitter.com/stefanreichhart)|
|[Tudor Gîrba](http://tudorgirba.com)|

#Blog Posts


| | |
|---|---|
|[Finding asClass usages in Glamour using GTSpotter](http://www.humane-assessment.com/blog/finding-asclass-usages-in-glamour-using-gtspotter/)|
|[Scoping for a specific search category in GTSpotter](http://www.humane-assessment.com/blog/scoping-for-specific-search-category-in-gtspotter/)|
|[Managing external Pharo scripts with GTInspector and GTSpotter](http://www.humane-assessment.com/blog/managing-external-pharo-scripts-with-gtinspector-and-gtspotter/)|
|[Spotting objects from GTInspector](http://www.humane-assessment.com/blog/spotting-objects-from-gtinspector/)|
|[Searching the file system with GTSpotter](http://www.humane-assessment.com/blog/searching-file-system-with-gtspotter/)|
|[Boosting GTSpotter with preview capabilities](http://www.humane-assessment.com/blog/boosting-gtspotter-with-preview/)|
|[Sharing code using Playground and Spotter](https://chisvasileandrei.wordpress.com/2015/05/08/sharing-code-using-playground-and-spotter/)|
