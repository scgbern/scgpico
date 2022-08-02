---
Title: Debugging Actors
---
#Debugging Actors
# Why actors?

The number of cores in current processors is continually increasing . To fully benefit from this increase, concurrency is a mandatory feature in software applications. Traditional solutions that rely on shared-state and blocking mechanisms behave well up to a certain number of cores. However, as the number of cores doubles every few years, in the near future these solutions will be no longer viable. Thus, new solutions are needed. One such solution introduced in the 1970's and popularised by languages like Erlang and Scala is the "actor model".

The actor model  treats "actors" as units of concurrent computation: in response to a message that it receives, an actor can make local decisions, create more actors and send more messages [1]. Actors do not share state; because of this there is no need for locks that synchronise access to shared data. They communicate through asynchronous message-passing.



# Domain-specific debugging


Answering questions about the runtime behavior of software is a prerequisite for maintaining and evolving software systems. Most of the time this is done by using the debugger, as it allows developers to interact with a running system and inspect its state. This makes the debugger an essential tool in any programming environment. However, standard generic debuggers are not well suited for debugging contextual problems. 

This problem is obvious is we look at actors. Given that they introduce a new model for concurrency, debugging actors using a generic debugger is not a straightforward activity: actors decouple the sender from the receiver enabling asynchronous communication. Generic debuggers are not aware of this and don't provide useful features. For example, putting a breakpoint in an actor will not stop the other actors; when a high number of highly interconnected actors is used, exploring the interactions can pose problems.

# Goal

The goal of this project is to explore how debugging actors can be improved with the help of a domain-specific debugger. To achieve this we will develop a domain-specific debugger aware of actors and experiment with different kind of features.

# Benefits/Requirements/Challenges

This project will give you the chance to learn about the actor model and about the construction of debuggers. The project will be done in [Pharo](http://www.pharo-project.org/%20), an open-source Smalltalk-inspired environment. You will see a language quite different from Java and C#. The new debugger will be implemented using the ["Moldable Debugger"](%base_url%/research/moldabledebugger)[2][3], a framework for creating domain-specific debuggers.

You should apply for this project if you have good programming skills in any object-oriented language. Knowing anything about Pharo or actors is not required.

Available as a master project. (Different parts of the project can be extracted into bachelor projects.)

# References


-  [1] [Actors Model](http://en.wikipedia.org/wiki/Actor_model)
-  [2] [Towards a Moldable Debugger](http://rmod.lille.inria.fr/archives/dyla13/dyla13_4_Towards_a_Moldable_Debugger.pdf)
-  [3] [The "Moldable Debugger" framework](%base_url%/research/moldabledebugger)
-  [4] [A first look at the Pharo debugger](http://chisvasileandrei.wordpress.com/2013/10/24/a-first-look-at-the-pharo-debugger/)
-  [5] [Actalk](http://www.researchgate.net/publication/2727006_Actalk_a_Testbed_for_Classifying_and_Designing_Actor_Languages_in_the_Smalltalk-80_Environment/file/9fcfd50bc758f55222.pdf)
-  [6] [Actors in Smalltalk-80](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.41.7827&rep=rep1&type=pdf%20)

Contact: [Andrei Chiş](%base_url%/staff/andreichis)
