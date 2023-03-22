---
Title: PetitParser
---
![/download/helvetia/helvetia.png](%base_url%/download/helvetia/petitparser-small.png)

Grammars for programming languages are traditionally specified statically. They are hard to compose and reuse due to ambiguities that inevitably arise. PetitParser combines ideas from scannerless parsing, parser combinators, parsing expression grammars and packrat parsers to model grammars and parsers as objects that can be reconfigured dynamically.

# PetitParser for Smalltalk

PetitParser was originally implemented in Smalltalk by [Lukas Renggli](https://www.lukas-renggli.ch) as a component of the [Helvetia](..) language embedding framework.

An introduction to PetitParser can be found in the blog posts [Writing Parsers with PetitParser](http://www.lukas-renggli.ch/blog/petitparser-1) and [Composite Grammars with PetitParser](http://www.lukas-renggli.ch/blog/petitparser-2).
There is a dedicated chapter on PetitParser in [Deep into Pharo](https://books.pharo.org/deep-into-pharo/index.html).

The framework has been ported to [numerous other programming languages](https://petitparser.github.io).

# PetitParser 2

[PetitParser2](https://github.com/kursjan/petitparser2) is a complete reimplementation of PetitParser by [Jan Kurš](%base_url%/staff/kursjan) as part of the [PetitCompiler](%base_url%/research/petitcompiler) project.

PetitParser2 runs on [Pharo](https://pharo.org) and is integrated into [Glamorous Toolkit](https://gtoolkit.com).

There is an extensive [PetitParser2 tutorial](https://kursjan.github.io/petitparser2/petitparser2.html) that explains the differences with the original PetitParser.
Installation instructions can be found on the [PetitParser2 github repo](https://github.com/kursjan/petitparser2).

---

# Running PetitParser in Pharo

To install the original version of PetitParser in Pharo, evaluate the following code snippet:

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

#License

PetitParser is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).
