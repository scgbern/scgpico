---
Title: PetitParser
---
#PetitParser

![/download/helvetia/helvetia.png](%base_url%/download/helvetia/petitparser-small.png)

Grammars for programming languages are traditionally specified statically. They are hard to compose and reuse due to ambiguities that inevitably arise. PetitParser combines ideas from scannerless parsing, parser combinators, parsing expression grammars and packrat parsers to model grammars and parsers as objects that can be reconfigured dynamically.

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
