---
Title: Scoped Talents
---

A stream is a data structure to process static resources like files dynamically and
efficiently. The variation of processable resources puts numerous requirements on
an implementation of the stream data structure. Furthermore, a lot of features need to be provided in multiple combinations e.g. buffering is useful for file streams and socket streams
as well. A solution that tries to model all these combinations of features on the
class level (i.e. using traits or going the traditional class based framework approach) leads to an explosion in the number of classes or a significant amount of code duplication,which hinders any framework's maintainability. We find these problems in the standard
Pharo implementation of streams and Xtreams. To circumvent a class explosion and code duplication, we model composable features instead of combinations of features. Each feature is modeled as a [talent](http://scg.unibe.ch/research/bifrost/talents) and can be composed with any other feature. We introduce scoped talents which allow the use of subjective behavior and guarantee an easy composition of features and decomposition as well. Our approach allows us to decouple features from each other and neither leads to a class explosion, nor to a significant amount of code duplication. The
resulting framework is called Talented Streams. We also present a way to efficiently work with talents by using classes as factories. This approach allows us to reuse the development tools, which were designed to work with classes, for the development of talents.

#Presentations


#Getting Started

To get started you can load the code yourself.


##Loading
The Talented Streams framework and the scoped talents are hosted on [SqueakSource](http://www.squeaksource.com/talents.html))
You can install it in your Pharo 1.3 image using [Gofer](http://www.lukas-renggli.ch/blog/gofer)
by executing the following code in goferTalentedStreams in a workspace.


```Gofer new 
	squeaksource: 'talents';
	package: 'ConfigurationOfTalentsStreams';
	load.
(Smalltalk at: #ConfigurationOfTalentsStreams)
	perform: #loadDefault.
```

#Publications
![Fixed Query](%base_url%/scgbib/fixedquery)
