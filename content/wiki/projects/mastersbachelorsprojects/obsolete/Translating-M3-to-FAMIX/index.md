---
Title: Translating M3 to MSE
---

[Moose](http://www.moosetechnology.org/) is a platform for software and data analysis, and [FAMIX](http://www.moosetechnology.org/docs/famix) is its language independent metamodel. [MSE](http://www.moosetechnology.org/docs/mse) is the interchange format used to import models of software into Moose to enable analysis. The bottleneck in generating models for different languages is that one must first write a parser and an MSE generator for that language.

[Rascal](http://www.rascal-mpl.org/) is a meta-programming language for analyzing and transforming source code. It shares many similar goals with Moose. [M3](http://tutor.rascal-mpl.org/Rascal/Libraries/analysis/m3/m3.html) is the language-independent metamodel of Rascal, which shares many similarities with FAMIX, though FAMIX is inherently an object-oriented model and M3 is essentially functional. The Rascal project intends to develop M3 importers for many programming languages. By translating M3 models to FAMIX, there can be a fast path to importing software models into Moose as well.

A [first prototype of such a translator](https://github.com/onierstrasz/rascal-m3-to-mse) for Java has already been implemented by [Oscar Nierstrasz](%base_url%/staff/oscar) and has been documented in a [slideshare presentation](http://www.slideshare.net/onierstrasz/what-i-learnerascal). 

This project would implement a full M3 to MSE translator for Java and other languages.

See also [M3 for Moose](http://www.slideshare.net/onierstrasz/m3-for-moose), describing a prototype translator implemented directly in Pharo Smalltalk.

**Contact:** [Oscar Nierstrasz](%base_url%/staff/oscar)
