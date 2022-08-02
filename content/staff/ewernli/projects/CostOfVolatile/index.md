---
Title: Cost Of Volatile
---
#Cost Of Volatile
Assessing the scalability of programs and algorithms on multicore is critical. There is an important literature on locks and locking schemes, but the exact cost of volatile is less clear&mdash;the goal of the project is to shed some light on the matter.

*Project Description*

1. In a first phase the student will study factors that impact performance of programs and algorithms on multicore, e.g. contention, read vs. write, data locality, cache lines, hardware architecture, etc. 

The student will also study the java memory model to understand precisely the semantics of volatile. 

2. Base on the factors identified in 1, the student will design a benchmark that can be parametrized (e.g. number of threads) to assess the impact of the factors. If necessary, the design of other concurrency benchmarks will be studied.

3. The student will systematically vary the paramters and run the benchmark. He/she will then analyze and interpret the results to provide recommendations on the use of volatile. 

*Remark*


-  We can use one of the university server for phase 3 of the project. 
-  The original motivation for this project comes from the design of [Theseus](%base_url%/research/Theseus), a technique to update java program without restart. The implementation uses many volatile fields, which is a threat to the scalability of the approach. If time permits, it would be interesting to assess the cost of volatile in this context. 

*Requirements*

Some knowledge of concurrent programming, interest in scientific methods

*References*

Performance of volatile


-  [Are volatile really free?](http://brooker.co.za/blog/2012/09/10/volatile.html)
-  [Is volatile expensive? ](http://stackoverflow.com/questions/4633866/is-volatile-expensive)
-  [Java's Atomic and volatile, under the hood on x86](http://brooker.co.za/blog/2012/11/13/increment.html)
-  [Cost of Volatile](http://beautynbits.blogspot.ch/2012/11/the-cost-of-volatile.html)

Semantics of volatile


-  [Java Concurrency (&c): What Volatile Means in Java](http://jeremymanson.blogspot.com/2008/11/what-volatile-means-in-java.html)
-  The Java Memory Model [here](http://www.cs.umd.edu/~pugh/java/memoryModel/), and the [POPL'05](http://dl.acm.org/citation.cfm?id=1040305.1040336) paper
-  [An Operational Semantics including "Volatile" for Safe Concurrency](http://www.cs.uwm.edu/~boyland/papers/simple-concur.pdf), JOT 09

Memory management in general


-  [Double-checked locking is broken](http://www.cs.umd.edu/~pugh/java/memoryModel/DoubleCheckedLocking.html)
-  [Thin locks: featherweight synchronization for Java, PLDI 98](http://researcher.ibm.com/files/us-bacon/Bacon98ThinSlides.pdf)
-  [Memory Barriers: a Hardware View for Software Hackers](http://www.rdrop.com/users/paulmck/scalability/paper/whymb.2009.04.05a.pdf)
-  [What Every Programmer Should Know About Memory](http://www.akkadia.org/drepper/cpumemory.pdf)
-  [False Sharing](http://en.wikipedia.org/wiki/False_sharing)
-  [Relaxed-Memory Concurrency](http://www.cl.cam.ac.uk/~pes20/weakmemory/) " This page collects work by a group of people working to develop mathematically rigorous and usable semantics for multiprocessor programs"
