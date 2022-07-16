---
Title: SCP 2016
---
#SCP 2016
##Dear SCP 2016 Reviewer, dear Reader!

On this web page we provide:


-  A Moose image with pre-loaded Petit Compiler 
-  Source code for validation and benchmarks.

##Prepared Image
A Pharo image with pre-loaded packages, tests, benchmarks and validations can be found in  [this archive](%assets_url%/download/jk/scp2016/archive-final.zip).

###Image Info
You can run all the PetitParser related tests from the TestRunner tool. The tests have the 'PetitCompiler' prefix.

You can run all the validations using the *ThesisMeasurements* class, which is a facade to the benchmarks and measurements used in the thesis. Each measurement creates bunch of *\*.dat* files containing data used by the *\*.gnuplot* scripts.

##Archive Structure
The archive is organized as follows:

-  *image*: a Pharo image including PetitParser with all the extensions discussed in the thesis.
-  *VMs*: Pharo vms for MacOS, Linux and Windows to run the image. The VMs can be downloaded from [Pharo.org](http://pharo.org/) as well.
-  Sources for benchmarks and validations:
	-  *smalltalk-src*
	-  *ruby-src*
	-  *java-src*
	-  *python-src*

-  *plots*: Directory with gnuplot scripts to generate the graphs used in chapter 5.


##PetitParser in Moose
Many concepts introduced in this thesis were integrated into PetitParser used in the [Moose](http://www.moosetechnology.org/) software and data analysis platform.

The latest version of Petit Compiler can be found [here](/research/petitcompiler).
