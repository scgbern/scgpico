---
Title: PetitParser
---
#PetitParser

![/download/helvetia/helvetia.png](%base_url%/download/helvetia/petitparser-small.png)

Grammars for programming languages are traditionally specified statically. They are hard to compose and reuse due to ambiguities that inevitably arise. PetitParser combines ideas from scannerless parsing, parser combinators, parsing expression grammars and packrat parsers to model grammars and parsers as objects that can be reconfigured dynamically.

# PP for Smalltalk

PetitParser was originally implemented in Smalltalk by [Lukas Renggli](https://www.lukas-renggli.ch) as a component of the [Helvetia](..) language embedding framework.

An introduction to PetitParser can be found in the following blog posts: [Writing Parsers with PetitParser](http://www.lukas-renggli.ch/blog/petitparser-1) and [Composite Grammars with PetitParser](http://www.lukas-renggli.ch/blog/petitparser-2).
There is a dedicated chapter on PetitParser in [Deep into Pharo](https://books.pharo.org/deep-into-pharo/index.html), and there is a chapter on using PetitParser with Moose in the Moose Book.

The framework has been ported to numerous other programming languages.
See the [PetitParser home page](https://petitparser.github.io) to find PP for other platforms.

# PP 2

[PetitParser2](https://github.com/kursjan/petitparser2) is a complete reimplementation of PetitParser by [Jan Kurš](%base_url%/staff/kursjan) as part of the [PetitCompiler](%base_url%/research/petitcompiler) project.

PetitParser2 runs on [Pharo](https://pharo.org) and is integrated into [Glamorous Toolkit](https://gtoolkit.com).

There is an extensive [PetitParser2 tutorial](https://kursjan.github.io/petitparser2/petitparser2.html) that explains the differences with the original PetitParser.
Installatuon instructions can be found on the [PetitParser2 github repo](https://github.com/kursjan/petitparser2).




---

# OLD STUFF


#Getting Started

Although PetitParser was born as part of the Helvetia infrastructure, it can be used independently. An introduction to PetitParser can be found in the following blog posts: [Writing Parsers with PetitParser](http://www.lukas-renggli.ch/blog/petitparser-1) and [Composite Grammars with PetitParser](http://www.lukas-renggli.ch/blog/petitparser-2).
There is a dedicated chapter on PetitParser in [Deep into Pharo](https://books.pharo.org/deep-into-pharo/index.html), and there is a chapter on using PetitParser with Moose in the Moose Book.

##Pharo Smalltalk

Pharo Smalltalk is the main development environment of PetitParser. To load the core library evaluate the following code:

```
Gofer new
    renggli: 'petit'; 
    package: 'PetitParser';
    load.
```

To get the full toolset, including a dedicated editor and some experimental tools, use the following Metacello script:

```
Gofer new
    renggli: 'petit';
    package: 'ConfigurationOfPetitParser';
    load.
(Smalltalk at: #ConfigurationOfPetitParser)
    perform: #loadDefault.
```

PetitParser has been reported to also work in Squeak.

##GNU Smalltalk

To load the package PetitParser.star one can type:

```
gst-package http://smalltalk.gnu.org/project/petitparser/package.xml
```

To load the PetitParser.star into the image do:

```
PackageLoader fileInPackage: 'PetitParser'
```

There are some differences between the official PetitParser and this port. GNU Smalltalk does not support binary selectors that have more than two characters. This means that \==> and >=> had to be mapped to something else. I have picked => and >< for now.

More details can be found in the blog article of [Holger Hans Peter Freyther](http://smalltalk.gnu.org/blog/zecke/petitparser-gnu-smalltalk).


##Java

There is a version of [PetitParser for Java](https://github.com/renggli/PetitParserJava).

##Dart

There is also a version of [PetitParser for Dart](https://github.com/renggli/PetitParserDart).

#License

PetitParser is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).

#Publications
[Papers](%assets_url%/scgbib/?query=petitparser&filter=Year)
