---
Title: Traits - Composable Units of Behavior
---
#Traits - Composable Units of Behavior
Traits are a simple composition mechanism for structuring object-oriented programs. A Trait is essentially a parameterized set of methods; it serves as a behavioral building block for classes and is the primitive unit of code reuse. With Traits, classes are still organized in a single inheritance hierarchy, but they can make use of Traits to specify the incremental difference in behavior with respect to their superclasses.

Unlike mixins and multiple inheritance, Traits do not employ inheritance as the composition operator. Instead, Trait composition is based on a set of composition operators that are *complementary* to single inheritance and result in better composition properties.

We have implemented Traits in [Squeak](http://www.squeak.org), an open-source Smalltalk-80 dialect. In the meantime, Traits have had a significant practical impact and have been [ported to various other languages](%base_url%/research/traits).

A mailing list is available for discussion and questions <a href="mailto:traits@iam.unibe.ch">traits@iam.unibe.ch</a>
, but you need to register first. 

#Selected Publications

The following papers give an overview of Traits and show their practical usability. Note that the material of all these papers and more is also available in Nathanael Schärli's dissertation [Traits &mdash; Composing Classes from Behavioral Building Blocks](%assets_url%/scgbib/?query=Nathanael+thesis+traits&filter=Year).


- [Traits &mdash; Composable Units of Behavior](%assets_url%/scgbib/?query=Nathanael+traits+Composable+Units&filter=Year) is the concept paper introducing Traits. It also compares Traits to mixins and multiple inheritance, summarizes a formal model for Traits, briefly discusses our implementation and gives an overview of a realistic application: refactoring the Smalltalk collection hierarchy.
- [Traits: A Mechanism for Fine-grained Reuse](%assets_url%/scgbib/?query=Traits+Mechanism&filter=Year) is a newer paper accepted to TOPLAS. This paper is a mature description of traits and contains a formal model of traits. 
- [Applying Traits to the Smalltalk Collection Hierarchy](%assets_url%/scgbib/?query=Applying+Traits+to+the+Smalltalk+Collection+Hierarchy&filter=Year) is an experience report of applying Traits to refactor the Smalltalk collection hierarchy. 
- [Uniform and Safe Metaclass Composition](%assets_url%/scgbib/?query=Uniform+and+Safe+Metaclass+Composition&filter=Year) presents how traits can be used at the metalevel and offer safe metaclass composition model for Traits and defines some basic properties of Traits and classes.
- [Traits: The Formal Model](%assets_url%/scgbib/?query=Traits+Formal+Model&filter=Year) presents a formal model for Traits and defines some basic properties of Traits and classes.
- [Traits: Tools and Methodology](%assets_url%/scgbib/?query=Traits+Tools+Methodology&filter=Year) describes the Trait Browser and the programming methodology that we have developed around the use of Traits and the Trait Browser.
- [A Browser for Incremental Programming](%assets_url%/scgbib/?query=Browser+Incremental+Programming+2004&filter=Year) describes the *virtual categories* used in the Trait Browser in more details.
- [Traits in C#](%assets_url%/scgbib/?query=Reichhart+traits&filter=Year) is a technical report about traits in a statically typed object-oriented language

#Implementations

##Squeak Smalltalk
Traits are available for [Squeak](http://www.squeak.org). Starting with version 3.9, they are part of the standard distribution: [Download Squeak 3.9](http://ftp.squeak.org/3.9/) 

##Perl
Stevan Little [implemented Traits](http://search.cpan.org/~stevan/Class-Trait/) in [Perl 5](http://www.perl.com).
The first Traits implementation by Stevan little is now obsolete. Stevan has created [Moose](http://search.cpan.org/dist/Moose/), a "postmodern object system for Perl 5", that has huge impact on the Perl community. Moose has a metaobject protocol, much like CLOS or Smalltalk; the notion of traits is called "Roles".

In his [series about the unfolding of the Perl 6 design](http://www.perl.com/pub/a/2004/04/16/a12.html), Larry Wall, the creator of Perl, gives a description of Roles, the variation of Traits that is planned as a fundamental language element of Perl 6. See also: Updated docs on the design of Perl6 (objects and roles)

Discussions on roles vs inheritance are quite active among Perl bloggers. See for example

-  [http://www.modernperlbooks.com/mt/2009/04/the-why-of-perl-roles.html](http://www.modernperlbooks.com/mt/2009/04/the-why-of-perl-roles.html)
-  http://use.perl.org/~Ovid/journal/38862
-  http://use.perl.org/search.pl?tid=&query=roles&op=journals
 
##Scala
[Scala](http://scala.epfl.ch/) is a modern multi-paradigm programming language that smoothly integrates features of object-oriented and functional languages. Scala also [features Traits](http://www.scala-lang.org/node/126), which is particularly interesting because they are smoothly integrated into Scala's static type system (which is similar to the type system of Java and C#).
 
##C#
We have worked on a [Microsoft funded research project](%base_url%/research/rotor) aimed to bring Traits to C#/Rotor, the shared source implementation of .NET.

Stefan Reichhart implemented a [simple prototype](%assets_url%/download/rotor/CSharpTDemo.zip) (including examples/demos) of traits in C# during a student project. The work is accompanied by a [technical report](%assets_url%/scgbib/?query=Reichhart+traits&filter=Year) and [presentation slides](%assets_url%/download/rotor/SSCLI2005TraitsCSharp.pdf) from the [SSCLI Capstone Workshop 2005](http://research.microsoft.com/workshops/SSCLI2005/) at Microsoft Research, Redmond. 

##VisualWorks Smalltalk
Terry Raymonds from [Cincom](http://www.cincom.com) ported a variation of Traits to [VisualWorks Smalltalk](http://smalltalk.cincom.com).
