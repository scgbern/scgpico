---
Title: The "Moldable Debugger"
---

Debuggers are crucial tools for developing object-oriented software systems as they give developers direct access to the running systems. Nevertheless, traditional debuggers rely on generic mechanisms to explore and exhibit the execution stack and system state, while developers reason about and formulate domain-specific questions using concepts and abstractions from their application domains. This creates an abstraction gap between the debugging needs and the debugging support leading to an inefficient and error-prone debugging effort. To reduce this gap, we propose a framework for developing domain-specific debuggers called the Moldable Debugger. 

The Moldable Debugger is adapted to a domain by creating and combining domain-specific debugging operations with domain-specific debugging views, and adapts itself to a domain by selecting, at run time, appropriate debugging operations and views. 
All in all, the moldable debugger allows you to:

-  craft your custom debugger with custom views and actions, and
-  switch to a contextual debugger dynamically depending on what you need. 

<iframe src="//www.slideshare.net/slideshow/embed_code/key/NsG8G3tigVmzin" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> </div>

#A quick example
Have you ever had problems with identifying the difference between an expected result and the actual result when an equality assertion failed in a test case? It can be a daunting task especially if you have to compare two long collections or strings.

Letâs look at an example. The code below simulates a problem in a test that compares two seemingly similar collections. As an exercise, execute this in a Moose image and find where the difference comes from in the debugger. Seriously, please give it a try before going on. It only takes a couple of minutes:

-  Download and run the [latest Moose 5.0 image](http://www.moosetechnology.org/download/5.0)
-  Open a Workspace and execute the below code.

```testClass := TestCase subclass: #ATest
      instanceVariableNames: ''
      classVariableNames: ''
      poolDictionaries: ''
      category: 'ATest'.
 testClass compile: 'testEquals
      self
           assert: #(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22
23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 
49 50 51 51 51 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 
75 76 77 78 79 80 81 81 81 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99)
           equals: #(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 
23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 
49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 
75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99)'.
 (Smalltalk globals at: #ATest) new
      setTestSelector: #testEquals;
      debug
```

Executing the code should raise a debugger like this one:
![http://humane-assessment.com/pierfiles/5f/qfwvpy81517touapjhr5hx3ut4yvqq/default-debugger.png](http://humane-assessment.com/pierfiles/5f/qfwvpy81517touapjhr5hx3ut4yvqq/default-debugger.png)

Did you manage to find why the assertion fails? Itâs probably not so easy. If you did manage to find it, did you actually manage both causes? Yes, there are two.

The problem is that the debugger does not make it easy for you to spot these differences. It bombards you with information about all sorts of irrelevant variables while all you care about is a simple diff view between the two compared values. This is recurrent problem that  requires dedicated tool support.

To address these kind of problems we worked on the concept of a moldable debugger. The idea is simple: debugging is an analysis activity that has contextual needs, and as such, it benefits from custom tool support. Given that we cannot foresee your specific context, we provide an infrastructure with which you can easily craft your own dedicated debugger.

How does this work in practice?

Letâs turn to our assertion problem. SUnit is an example of a specific library that has specific needs. In our case, if assert:equals: is present in the debugged stack, we want to show a diff view.

To see it in action, re-trigger the debugger with the above snippet, then click on the small triangle from on top of the first pane (the actual user interface is going to change in the future, but for now it is enough to show the concept), and then choose â'Available Debuggers/SUnit Debuggerâ. You will get a new debugger like the one below.

![http://humane-assessment.com/pierfiles/f5/lj4jzvpig6eyjtehm48ekk2t6gpyn9/sunit-debugger.png](http://humane-assessment.com/pierfiles/f5/lj4jzvpig6eyjtehm48ekk2t6gpyn9/sunit-debugger.png)

Was it easier to spot the differences? Our guess is yes. If you are still not convinced bellow you can find a screencast comparing this debugger to a generic one.

<iframe src="//player.vimeo.com/video/83017763?byline=0" width="600" height="464" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

#A hight level view
A tool that matches the context of your problem can provide an order of magnitude productivity increase for solving that problem. Given that debugging is a pervasive activity in software development, having a multitude of custom debuggers around can have a significant productivity impact.

This is a new paradigm that requires a different mindset. First, you have to start utilizing contextual feedback. Second, you have to get comfortable with the idea of crafting your own tools. And third, you have to get used to all this not being expensive. 

Bellow you can find a video presenting this idea in a nutshell.

<iframe src="//player.vimeo.com/video/83019193?byline=0" width="600" height="448" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

Appart from the SUnit debugger we have implemented a couple of other such dedicated debuggers for PetitParser, Glamour and Announcements. 

#Debugging PetitParser
[PetitParser](http://www.moosetechnology.org/tools/petitparser) is a framework that makes it possible to model grammars and parsers as objects that can be reconfigured dynamically. Furthermore, it makes it easy to dynamically reuse, compose, transform and extend grammars.

A generic debugger only provides low-level operations, like stepping over instructions or into function calls. The debugging operations actually needed when working with PetitParser do not map well onto them. Furthermore, when working with PetitParser we need to see contextual information like the source code of grammar productions and the input being parsed. Given the contextual nature of these information it is highly unlikely that generic debuggers will contain them by default.

The solution consists in using a domain specific debugger that presents the parser graphically, and allows you to move smartly between various parsing events (like next time the stream position gets modified).

<iframe src="//player.vimeo.com/video/83017762?byline=0" width="600" height="465" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

#Debugging Announcements
The Announcements framework from [Pharo](http://www.pharo-project.org) is a framework providing a synchronous notification mechanism between objects based on a registration mechanism and first class announcements. Since the control flow for announcements is event-based, it does not match well the stack-based paradigm used by conventional debuggers. To solve this problem we have developed a dedicated domain-specific debugger presented bellow (the screencast shows an older version of the debugger).

<iframe src="//player.vimeo.com/video/83020584?byline=0" width="600" height="465" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

#Getting Started
The GTDebugger implements the idea of a moldable debugger as part of the [GToolkit](http://gt.moosetechnology.org/) project, and it is by default installed in the latest Moose image. You can download a fresh Moose image from [the Moose website](http://www.moosetechnology.org/).

#Authors

|[Andrei ChiÈ](http://andreichis.com)|
|---|---
|[Tudor Gîrba](http://tudorgirba.com)|

#Publications
[Fixed Query](%assets_url%/scgbib/?query=*&filter=Year)

#Blog articles


|[A first look at the Pharo debugger](https://chisvasileandrei.wordpress.com/2013/10/24/a-first-look-at-the-pharo-debugger/)|
|---|---
|[A bytecode debugger](https://chisvasileandrei.wordpress.com/2015/01/15/a-bytecode-debugger/)|
|[Extending the Pharo debugger with custom actions](https://chisvasileandrei.wordpress.com/2015/07/09/extending-the-pharo-debugger-with-custom-actions/)|
|[](Debugging tests and parsers with GTDebugger (demo)>http://www.humane-assessment.com/blog/debugging-tests-and-parsers-with-gtdebugger-demo/)|
