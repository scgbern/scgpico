---
Title: Concurrency in Ruby (C#?)
---

We would like to know what concurrent programming constructs the Ruby
programmers use.
Evidence of how programmers write concurent programs can help other
programmers to be more efficient when using the available constructs
and can assists researchers in devising new mechanism and improving
existing ones.

In order to answer the question, we need to know what are the
concurrent programming constructs used in Ruby.
Moreover we need to parser ruby source in order to extract concurrent
programming constructs.
As a parser technology, use Petit Parser framework [1, 2, 3]. In order
to overcome problems with complex and hard-to-parse Ruby syntax,
implement only partial concurent programming related parser.

The goals of the projects are:

-  Survey of Ruby construct allowing concurrency
-  Implementation of non-complete parser that is able to extract information about concurrent programming constructs from Ruby source code.


###Required Skills

-  Smalltalk
-  Petit Parser Framework
-  Knowledge of concurrent programming in Ruby


###References
[1] [http://www.lukas-renggli.ch/blog/petitparser-1/](http://www.lukas-renggli.ch/blog/petitparser-1/)

[2] [http://www.lukas-renggli.ch/blog/petitparser-2/](http://www.lukas-renggli.ch/blog/petitparser-2/)

[3] [http://www.themoosebook.org/book/internals/petit-parser](http://www.themoosebook.org/book/internals/petit-parser)

###Related Papers:
[Are Java programmers transitioning to multicore?: a large scale study of java FLOSS](http://dl.acm.org/citation.cfm?id=2095072)
