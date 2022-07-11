---
Title: Talents
---

Reuse in object-oriented languages typically focuses on inheritance.
Numerous techniques have been developed to provide finer-grained reuse of methods, such as flavors, mixins and traits. These techniques, however, only deal with reuse at the level of classes. Class-based reuse is inherently static. Increasing use of reflection and meta-programming techniques in real world applications underline the need for more dynamic approaches. We propose a new approach that deals with reuse at the object level and that supports behavioral composition. We introduce a new abstraction called a talent which models features that are shared between objects of different class hierarchies. Talents provide a composition mechanism that is as flexible as that of traits but which is dynamic.

#Presentations

<div style="width: 100%" id="\__ss_8978540"><iframe src="http://www.slideshare.net/slideshow/embed_code/8978540" width="100%" height="450" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe></div>



<iframe width="420" height="315" src="http://www.youtube.com/embed/6Zul7Ruv-iE" frameborder="0" allowfullscreen></iframe>


#Getting Started

To get started you can either use a ready-made one-click image (suggested), or try to load the code yourself.

##One-Click Image

-  Download the [Talents](http://scg.unibe.ch/download/Bifrost/talents-OneClick.zip) distribution.
-  Launch the executable of your platform:
	-  Mac: talents-OneClick.app
	-  Linux: talents-OneClick.app/talents-OneClick.sh
	-  Windows: talents-OneClick.app/talents-OneClick.exe


##Loading
```Gofer new 
	squeaksource: 'talents';
	package: 'ConfigurationOfTalents';
	load.
(Smalltalk at: #ConfigurationOfTalents)
	perform: #loadDefault.
```

#Publications
![Fixed Query](%base_url%/scgbib/fixedquery)
