---
Title: A debugger for the web
---
#A debugger for the web
# Problem


Answering questions about the runtime behavior of software is a prerequisite for maintaining and evolving software systems. Most of the time this is done by using the debugger, as it allows developers to interact with a running system and inspect its state. This makes the debugger an essential tool in any programming environment. However, standard generic debuggers are not well suited for debugging contextual problems. 


Consider the process of debugging a web server (or RESTful services). When something fails looking at the request and the response objects can help. Also seeing more specific information like cookies, logged in users, etc. can help us get a better understanding of the situation. Last but not lest, most of the time we need to rapidly find these information and perhaps look at them at the same time. 


Relying just on a generic debugger can make finding the right information difficult, as all we have is the stack. Furthermore, most of the times we can only look at one object at a time. These problems can be addressed with the help of a domain-specific debugger   that can directly show the right information, at the right moment.


# Goal


The goal of these project is to create a domain-specific debugger for [Zinc HTTP Components](http://zn.stfx.eu/%20), an open source Smalltalk framework to deal with HTTP. It models most concepts of HTTP and its related standards and offers both client and server functionality. It can be used to create web applications and web servers.

The new debugger should focus on providing a new user-interface that displays relevant contextual informations, like requests, responses, cookies, etc. 

# Benefits/Requirements/Challenges

This project will give you the chance to learn about HTTP, web servers, web clients and about the construction of debuggers. The project will be done in [Pharo](http://www.pharo-project.org/%20), an open-source Smalltalk-inspired environment. You will see a language quite different from Java and C#. The new debugger will be implemented using the ["Moldable Debugger"](/research/moldabledebugger), a framework for creating domain-specific debuggers.

You should apply for this project if you have good programming skills in any object-oriented language and a basic knowledge of HTTP. Knowing anything about Pharo or having advanced HTTP knowledge is not required.

Available as a bachelor or master project.

# References


-  [1] [Towards a Moldable Debugger](http://rmod.lille.inria.fr/archives/dyla13/dyla13_4_Towards_a_Moldable_Debugger.pdf)
-  [2] [The "Moldable Debugger" framework](/research/moldabledebugger)
-  [3] [A first look at the Pharo debugger](http://chisvasileandrei.wordpress.com/2013/10/24/a-first-look-at-the-pharo-debugger/)
-  [4] [Zinc](http://zn.stfx.eu/zn)
-  [5] [Zinc documentation](http://zn.stfx.eu/zn/zinc-http-components-paper.html%20)
-  [6] [Zinc tutorial](http://zn.stfx.eu/zn/build-and-deploy-1st-webapp)

Contact: [Andrei Chiş](%base_url%/staff/andreichis)
