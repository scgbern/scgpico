---
Title: TreeMapLayout
---

[Quicksilver](%base_url%/research/quicksilver) uses tree maps for its visualization. As part of the development of Quicksilver, we implemented and contributed a tree map layout to [Roassal](http://objectprofile.com/#/pages/products/roassal/overview.html), an agile visualization engine included in [Pharo](http://www.pharo-project.org/).

Roassal is included in all Pharo releases, if one would like to work with he bleeding edge developement version though, the code can be found here: [http://smalltalkhub.com/#!/~ObjectProfile/Roassal](http://smalltalkhub.com/#!/~ObjectProfile/Roassal)

Lets look at an example how the TreeMapLayout can be used.
(These and more can be found in ROTreeMapLayoutTests).

First let us draw a tree with a tree layout as reference:

```| view |
view := ROMondrianViewBuilder new.
view nodes: (0 to: 999).
view edgesFrom: [ :each | each // 10 ].	
view treeLayout.
view open. 
```

This code draws us a very simple, but very large regular tree from the numbers 0 to 999. 

The tree is very wide, a tree map seems to fit much better to look at the tree structure. So let us see what the same looks like as a treemap:

```| view |
view := ROMondrianViewBuilder new.

"The treemap should have a dimension of 500 by 500"	
view shape size: 500.

view nodes: (0 to: 999).
view edgesFrom: [ :each | each // 10 ].

"The weights we use to draw the treemap are the models itself: the numbers."	
view layout: (ROTreeMapLayout withWeightBlock: [ :e | e model ]).
view open.
```

In this case, we get a much better overview of the data when using a treemap instead of a tree. 

Now as final step, let us look at a more useful example. We will create a treemap of all subclasses of the Collection class, weighted by lines of code (LOC):

```view := ROMondrianViewBuilder new.

"Adding basic interaction capabilities to nodes: 
 - Add a menu item which lets one explore the model of the node.
 - Another menu item which lets one browse the class represented by the node.
 - Show the node name on hover."
view interaction 
	item: 'Explore Class' action: #explore;
	item: 'Browse Class' action: #browse;
	popupText: [ :node | node ].

"The treemap should have a dimension of 500 by 500."	
view shape size: 500.

"Our nodes are all subclasses of Collection."
view nodes: Collection withAllSubclasses.
view edgesFrom: #superclass.

"The weights we use to draw the treemap are the classes lines of code (LOC)."
view layout: (ROTreeMapLayout withWeightBlock: [ :e | 
	e model numberOfLinesOfCode ]).
view open.
```
