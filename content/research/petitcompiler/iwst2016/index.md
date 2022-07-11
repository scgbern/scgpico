---
Title: IWST 2016
---

##Dear IWST 2016 Reviewer, dear Reader!

At this web page we provide:


-  A Moose image with pre-loaded Petit Compiler 
-  A source code for validation and benchmarks.

You can download an archive with all the data you need [from here](http://scg.unibe.ch/download/jk/iwst2016/data.zip). 

The archive is organized as follows:

-  image (folder with Smalltalk image)
	-  performanceSummary.gnuplot (to generate graphs from Benchmarks section)
	-  performanceDetails.gnuplot (to generate graphs from Performance Details section)
	-  performanceSmalltalk.gnuplot (to generate graphs from Smalltalk Case study Section)
	-  \*dat files contains results of benchmarks and are an input to the gnuplot scripts

-  java-src (sources for Java)
-  python-src (sources for Python)
-  ruby-src (sources for Ruby)
-  smalltalk-src (sources for Smalltalk)
-  pharo\*.zip (VM to run the images from images folder)

The **image** file can be opened with the Pharo virtual machine that can be downloaded from [Pharo web page](http://pharo.org/download).

Once you open the image, you can evaluate the code in pre-prepared playgrounds to replicate either evaluation, benchmarks, or our Smalltalk case study.

The latest version of petit compiler can be found [here](http://scg.unibe.ch/research/petitcompiler).
