---
Title: Empirical Study Of Concurrency in Open Source Object Oriented Software
---

**Goal:** Perform a study of the usage of concurrency and parallelism in Open Source OO software systems. The study can be a replication of the one that's mentioned at the end as related reading or can take a different approach.

Research Questions

-  How often do people use concurrency and parallelism? 
-  What are the primitives that developers are using? (e.g. simple synchronization, complex j.u.c. abstractions?)
-  [optional] If you run the same analysis over the years, what trends can be detected?
-  [optional] Can you compare different programming languages?
-  [optional] Which are the most discussed concurrency // parallelism issues online? Analyze StackOverflow.

Challenge #1:
How to obtain large amounts of source code?

-  Look at [Pangea](http://scg.unibe.ch/pangea/)
-  Look at online repositories: Ohloh, SqueakSource, ScalaForge, RubyForge

Challenge #2:
How toÂ detect concurrency?

-  reserved keywords, basic APIs (synchronize, Thread, Runnable, wait(), notify(), etc.)
-  well known APIs (e.g. java.util.concurrent)
-  third party libraries (STM, Hadoop, etc.)


Challenge #3: [optional] 
How to analyze and compare the usage of concurrency across programming languages?

**Required Skills:** You should like to conduct empirical research and be able to do coding for the fact extraction. 

**Related Reading:** [Are Java programmers transitioning to multicore?: a large scale study of Java FLOSS](%assets_url%/files/6c/kksr96tlbi3u5v6i3cr0nre9ar0xxm/p123-torres.pdf)
