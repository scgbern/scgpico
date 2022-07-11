---
Title: RBCrawler
---

RBCrawler bridges the gap between IDE and software visualization! It is available for Smalltalk's Refactoring Browser, (and soon Eclipse also).

<center><img src="http://scg.unibe.ch/files/49/s21imommxuj1ufxa9qoh7k4i7ezb2u/rbcrawler.jpg" width="80%"/></center>

RBCrawler reduces the time for software navigation. It offers many visual navigation views: Lanza's System Complexity View, Class Blueprint, and customizable Polymetric Views.

Distribution Maps, Traceplots of dynamic execution traces, Semantic Clustering, polysemy-aware search and Wordclouds are planned as well, but not ready yet.

Please find below a link to the ESUG Awards presentation


-  [2007-ESUG-RBCrawler.pdf](http://www.iam.unibe.ch/~akuhn/s/2007-ESUG-RBCrawler.pdf)



**What's next?** this project has been abandoned, please refer to my recent work on [Software Cartography](%base_url%/research/softwarecartography) instead.

---

# Download

Currently RBCrawler is at the stage of a prototype, interfaces and protocols may be subject to change. You are kindly invited to check out RBCrawler and provide me feedback on the current state.

RBCrawler is available for Visualworks 7.5 as at the following Store coordinates

``` Bundle: RBCrawler

  interface: PostgresSQLEXDIConnection
  environment: db.iam.unibe.ch:5432_scgStore
  user name: storeguest
  password: storeguest
  table owner: BERN
```

Distributed under BSD licenses. Copyright &copy; 2007-2008, Adrian Kuhn.


---

<small>Please find below RBCrawler's advertisment for last year's [ESUG Technology Awards](http://www.esug.org/conferences/15thinternationalsmalltalkjointconference2007/innovationtechnologyawards/)</small>

# RBCrawler: Software Cartography for the Developer

For 10 years now [CodeCrawler](http://www.inf.unisi.ch/faculty/lanza/codecrawler.html) has been around, but it never reached developer acceptance because it was trapped away in a analysis environment rather then being featured in their development environment (IDE).

Now, RBCrawler eventually bridges the gap between software analysis and development tools. RBCrawler augments the IDE with the best and latest from software visualization and reverse engineering. Just as today's automobiles feature a satellite navigation system to support car drivers, RBCrawler features a visual navigation system to support developers in their daily tasks. 

Despite common belief, developers are spending more time for navigating and trying to understand source code, rather than actually developing new functionality. Software visualizations has the power to improve software understanding and reduce the time for software navigation. In recent years, many visualization techniques have been proposed that ease understanding and navigation.

RBCrawler integrates a selection of the best of these techniques in Smalltalk's Refactoring Browser. The Refactoring Browser has already been ahead of its time back in the nineties, when it was the first IDE to feature automatic code refactorings. Today, automatic code refactorings are an industry standard. Now again, Smalltalk is taking the lead in software development as RBCrawler enhances the Refactoring Browser with a visual navigation system. 

RBCrawler extends both the editor pane and the navigation pane with the best and latest in software visualization: 


-  **System Complexity View** uses polymetric figures to show structure and metrics of an entire system at one glance. Developed by Michele Lanza  at the SCG, this view is undoubtedly among the most popular software visualization ever, and was maybe *the* path-leading break-through of software visualization in the early 2000s.


-  **Class Blueprint** uses polymetric figures to shows internal structure and metrics of single components. Another classic by Lanza, this view is the natural complement to the System Complexity View, as it shows the internals of object-oriented software.


-  **Custom Polymetric Views** are for all those of you that wanted [CodeCrawler](http://www.inf.unisi.ch/faculty/lanza/codecrawler.html) there and back again! Based on Lanza's polymetric figures, this highly customizable views allow developers to build any visualization they might ever need in order to understand software.


-  **Distribution Map** shows how properties and metrics distribute over the system's structure. Based on on-going research at the SCG, this view brings a first spark of spatiality into software visualization: our vision is that software shall eventually become as easy to navigate as real space using a geographical map. 


-  **Dynamic Traceplot View** shows the executional behavior of selected methods, depicting up to millions of methods calls on one screen. Also on-going research at the SCG, the idea here is to apply signal processing techniques to analyze and visualize execution traces.


-  **Semantic Clustering** and **Polysemy-Aware Search** complement software analysis with another dimension: search engine technology *aka* information retrieval (IR). The application of IR is a recent yet promising subfield of software analysis. All too often neglected, the vocabulary of source code bears the meaning of a software's domain and is thus indispensable for understanding any software system. Semantic Clustering is a recent development of SCG, it groups software components based on their domain vocabulary rather than structural depedencies.


-  **Word Cloud View** shows important terms in the vocabulary of selected software components. Popularized by the recent Web 2.0 as tag clouds, weighted lists are most useful to detect important vocabulary of &ndash; not only text documents and web-sites, but also &ndash; software components.

Currently, RBCrawler is at the stage of a prototype, details given in this document may be subject to change. However, a first stable release is planned for the [ESUG Technology Award 2007](http://www.esug.org/conferences/15thinternationalsmalltalkjointconference2007/innovationtechnologyawards/) in Lugano, featuring at least the first five views given above. The IR-based views are also planned, but might not be ready for presentation this sommer.
