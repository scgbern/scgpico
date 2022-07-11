---
Title: Parsing For Agile Modeling
---

#Dear Reader

On this page, you will find supplementary material for the *Parsing for Agile Modeling* thesis. The thesis can be downloaded [from here](http://scg.unibe.ch/archive/phd/kurs-phd.pdf).

##Prepared Image
A Pharo image with pre-loaded packages, tests, benchmarks and validations can be found in  [this archive](http://scg.unibe.ch/download/jk/parsingForAgileModeling/archive-final.zip).

###Image Info
You can run all the PetitParser related tests from the TestRunner tool. The tests have the 'Petit' prefix.

You can run all the validations using the *ThesisMeasurements* class, which is a facade to the benchmarks and measurements used in the thesis. Each measurement creates bunch of *\*.dat* files which contain data that are used by the *\*.gnuplot* scripts.

##Archive Structure
The archive is organized as follows:

-  *image*: a Pharo image including PetitParser with all the extensions discussed in the thesis.
-  *vms*: Pharo vms for MacOS, Linux and Windows to run the image. The VMs can be downloaded from [Pharo.org](http://pharo.org/) as well.
-  Sources for benchmarks and validations:
	-  *smalltalk-src*
	-  *ruby-src*
	-  *java-src*
	-  *python-src*

-  *plots*: Directory with gnuplot scripts to generate the graphs used in the thesis. The directory contains the following sub-directories:
	-  cs: for chapter 4
	-  bs: for chapter 5
	-  pc: for chapter 6
	-  ruby: for chapter 7



##PetitParser in Moose
Many concept introduced in this thesis were integrated into PetitParser used in the [Moose](http://www.moosetechnology.org/) software and data analysis platform.
