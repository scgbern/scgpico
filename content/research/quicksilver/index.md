---
Title: Quicksilver
---
#Quicksilver
Quicksilver is a tool for interactive exploration of large data sets with the help of hierarchical graphs. 

The following is an image generated with Quicksilver: it represents knowledge flow in StackOverflow in the first 5 years of its existence. For more details see the [paper](%base_url%/scgbib?query=Sche13a) published at SSE'13.

![Knowledge-flow-in-so](%assets_url%/files/8e/jwotis46cr3wak88t406nu5lnvssvb/image.jpg)

#Overview

To load and play with Quicksilver run the following code in [Pharo](http://www.pharo-project.org/):

```
Gofer new
        smalltalkhubUser: 'Quicksilver' project: 'Quicksilver';
        package: 'ConfigurationOfQuicksilver';
        load.
ConfigurationOfQuicksilver loadDefault.
```

##Examples

To see Quicksilver in action try these examples:

```
QsFilesystemViewer for: '/some/path/on/your/system'
```

This will open a tree map view of a directory, with files and folders not modified for a long time highlighted darker

```
QsSystemViewer for: 'Zinc'
```

This will open a view of the system with given name, in this case all packages starting with the name 'Zinc'.

These and more examples can be found in the Quicksilver-Examples Packages

##Code Repository

The code repository can be found on Smalltalkhub: [http://smalltalkhub.com/#!/~Quicksilver/Quicksilver](http://smalltalkhub.com/#!/~Quicksilver/Quicksilver)

#Subsystems

##Hierarchical Graphs

At the core of Quicksilver we use hierarchical graphs to conquer the complexity of large data sets.

You can look at the [documentation of the hierarchical graph algorithms here](%base_url%/research/quicksilver/HierarchicalGraph).

At [PharoConf  & MooseDay 2013](%base_url%/wiki/events/pharoconf-mooseday-2013) in Bern, a [small presentation about hierarchical graphs and Quicksilver](http://www.youtube.com/watch?v=pOxKVVoCH3A) was given.

##Visualization

###TreeMapLayout

As part of the development of Quicksilver, we implemented and contributed a tree map layout to Roassal.

Check out the [documentation for the TreeMaplayout here](%base_url%/research/quicksilver/TreeMapLayout).

#Team Members

-  [Dennis Schenk](%base_url%/wiki/alumni/dennisschenk)
-  [Mircea Lungu](%base_url%/staff/mircea)


#Publications

-  [*Geo-locating the Knowledge Transfer in StackOverflow*](%base_url%/archive/papers/Sche13a-GeolocatingStackOverflow.pdf) by Dennis Schenk and Mircea Lungu
