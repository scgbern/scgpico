---
Title: Pangea 2.0
---

<iframe src="//www.slideshare.net/slideshow/embed_code/39626851" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> 
</div>
**Pangea enables running language independent analyses on corpora of OO software projects.** 


#How to Use

The main use case for Pangea is writing an analysis script, and deploying it in parallel on all the systems in the corpus. The analysis needs to be written only once and can be run on models from corpora written in different languages, since it works with a language-independent meta-model.

The following is a script which is available as examples/noc.st file in your distribution. It prints to stdio the system name, and the number of classes in the system. 

``` "Print the number of classes in the system"
 Script is: [ 
	CommaSeparated values
		* Pangea model systemName;
		* Pangea model allModelClasses  size printString;
		print.
 ].
```


To deploy the script on all the systems in the corpus and collect the results in a .csv file you run: 

``` pangea run script -c QualitasCorpus-20120401r examples/noc.st  > noc.csv
```

Visualizing the noc.csv we get a glimpse of the sizes of the systems in the corpus: 

![System-sizes](%assets_url%/files/ee/6m6p1pk3otactrxmxymrgvlbsxmaxb/Screen-Shot-2014-04-17-at-14.40.57.png)

For a **more advanced analysis of the sizes** of the systems in the corpus click on the image below: 

[![Qc_analysis_3](%assets_url%/files/a3/w7s4yjgny7zoxk415ezl3b4jx5ygv9/chart_qc_metrics_3.png)](%base_url%/staff/merino/QCAnalysis)



#System Requirements
Pangea runs on a Mac, but should also work on Linux and Windows, as long as bash is installed.
Pangea can consume north of 20GB of space (10G sources and 20G of tools, models, and intermediate representations only for QualitasCorpus).

#Available software corpora
A list of currently supported software corpora can be found ![here](http://scg.unibe.ch/pangea/2.0/data/content.txt). 


#How to Install
To install Pangea create a working folder, and run the following command: 

``` git clone https://github.com/caracciolo/pangea.git
```

Since pangea without a corpus, is like corn flakes without milk, now you can query the available corpora: 

``` ./pangea corpora
 Available: 
  QualitasCorpus-20120401r Squeaksource-100 micro-qc
 Installed: 
  none
```

The three corpora you see available are the Qualitas Corpus, a corpus of 100 Smalltalk systems, and a small test corpus, named micro-qc. Say that you want to install the Qualitas Corpus. In the Pangea folder you run the following two commands to get it:

``` ./pangea get mse -c QualitasCorpus-20120401r
 ./pangea make models -c QualitasCorpus-20120401r 
```

This will (1) download the pre-built Moose models (in MSE format), and (2) build Moose images for each project. 

Step (2) will create Moose images for all the systems using the latest Moose [release](http://www.moosetechnology.org/download). If you want a specific Moose release instead of the latest release (e.g. you want the latest development version), then before running step (2) you should copy that version to the 2.0/tools/image/ folder and name it Moose.image. 

If for your analysis you also need the sources of the systems, then you can run: 

``` ./pangea get src -c QualitasCorpus-20120401r
```

*Caveat:* about 2GB of data will downloaded for the mse models and the same for the sources. Depending on your connection and machine, this can take some time.





# What's Inside
The following Corpora are available:

-  Java: QC 2012
-  Smalltalk: Squeak100

The following exporters are included: 

-  Java: VerveineJ
-  Smalltalk: Moose

The following analysis technologies are included:

-  Moose, FAMIX, Roassal



#Who to Ask
The project is maintained by SCG. The different people that contribute are: 

-  [Andrea Caracciolo](%base_url%/staff/Caracciolo) 
-  [Andrei Chiş](%base_url%/staff/andreichis) 
-  [Boris Spasojević](%base_url%/staff/Boris-Spasojevic)
-  [Mircea F. Lungu](%base_url%/staff/mircea)

#License
The project is released under the MIT [license](https://raw.githubusercontent.com/caracciolo/pangea/master/LICENSE.txt).
