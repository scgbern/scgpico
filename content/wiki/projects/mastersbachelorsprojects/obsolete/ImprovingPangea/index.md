---
Title: Improving Pangea
---

[Pangea](http://scg.unibe.ch/pangea/) is a toolset that reduces the cost of setting up and running an empirical study. The project is freely accessible at: [http://scg.unibe.ch/pangea/](http://scg.unibe.ch/pangea/).
It offers the possibility to run a study on different data sets (e.g. [Qualitas Corpus](http://www.qualitascorpus.com/)). The main way to create analysis in Pangea is using [Moose](http://www.moosetechnology.org/), an extensive platform for software and data analysis.

Pangea uses an external exporter to analyze the source code of Java projects and create MSE files. These MSE files are then loaded into Moose. This creates a model of the software system on which the analysis is run. After the analysis is done the results can be stored into a file.

While Pangea supports each of the aforementioned steps individually, there is no one-click solution for recreating all MSE files and running an analysis. Furthermore, the analysis and the exporter are run sequentially leading to long running times.

The aim of this project is to:

-  improve the infrastructure for creating MSE files and running an analysis. There should be a simple mechanism for specifying an analysis, regenerating the MSE files, and running the analysis. 
-  create a better mechanism for storing the results of an analysis
-  paralelise the generation of MSE files and the process of running an analysis.

Contact: [Andrei Chiş](%base_url%/staff/andreichis), [Andrea Caracciolo](%base_url%/staff/Caracciolo) or [Boris Spasojević](%base_url%/staff/Boris-Spasojevic)
