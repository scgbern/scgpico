---
Title: HierarchicalGraph
---
#HierarchicalGraph
A hierarchical graph stores nodes in a hierarchy of containment and relationships between these nodes. The relationships are propagated from the leaf nodes up in the hierarchy. 

While developing Quicksilver, we created algorithms that allow to easily build hierarchical graphs from any data. This code has subsequently been integrated into [Moose](http://moosetechnology.org), in the [Moose-Algos](http://smalltalkhub.com/#!/~Moose/MooseAlgos) subsystem.

#API Documentation

There following steps are necessary to construct a hierarchical Graph. First we have to decide whether we want to build it with a bottom-up or a top-down approach.

**Graph Building**

Let's look at an example with a top-down approach. We instantiate the hierarchical Graph in the following way:

```
| hg rootNodes visualizer edges|

rootNodes := OrderedCollection new.
rootNodes add: 'a'; add: 'b'; add: 'c'.

hg := MalHierarchicalGraph with: rootNodes name: 'aTopDownConstructedGraph'.
```

We now have prepared a hiGraph with three root nodes: a, b and c. Now we have to build the whole graph. We do this by specifying how to get children from the root nodes:

```
hg topDown: [ :model|  
	(model size < 7) ifTrue: [
		| result |
		result := Set new.
		result add: (model, 'a').
		result add: (model, 'b').
		result add: (model, 'c').
		result.
	]
].
```

The resulting hiGraph has 3279 nodes in total. We added three children to every node. One child with a 'a' appended to its parents name, one with 'b' and one with 'c'. So root node 'a' has children 'aa', 'ab' and 'ac'. We continue this until we have children that are 7 characters in length, for example: 'abcaacb'.

To better understand what this graph look like we can visualize it:

```
visualizer := QsVisualizer with: hg.
visualizer weight: #size.
visualizer show.
```

What we see now is one big tree map representing our hierarchical graph. The tree map is uniformely distributed, since the weight we uses is simply the size of the strings. Notice that weight do not get propagated up in the graph so far. If every parent should have the summed weight of its children, we can use weight synthesization:

```
visualizer := QsVisualizer with: hg.
visualizer weightSynthesized: #size.
visualizer show.
```

Instead of providing a simple symbol to perform on the nodes models, we can also provide blocks, like so:

```
visualizer := QsVisualizer with: hg.
visualizer weightSynthesized: [ :m | m size ].
visualizer show.
```

The steps to construct a hierarchical graph with a bottom-up approach are similar. We instantiate the graph the exact same way, but instead of giving it root nodes, we give it leaf nodes. Then, instead of calling topDown, we use the method bottomUp:

```
| hg leafNodes visualizer |

leafNodes := OrderedCollection new.
leafNodes add: 12; add: 19; 
	add:24; add: 25; add:27; add: 28; 
	add: 31; add: 34; add: 36.

hg := MalHierarchicalGraph with: leafNodes name: 'anExampelHg'.

hg bottomUp: [ :n |  
	(n = 0) ifTrue: [ nil ] 
	ifFalse: [ 
		(n / 10 < 1) ifTrue: [ 0 ] 
		ifFalse: [(n / (10 raisedTo: (n floorLog: 10))) floor asInteger ]
	].
].

visualizer := QsVisualizer with: hg.
visualizer weightSynthesized: [ :m | m ].
visualizer show.
```

**Edges**

We have not defined relationships between nodes so far. This can be done in the following way:

```
edges := OrderedCollection new.	
edges add: ('a'->'b').
edges add: ('ab'->'ba').
edges add: ('abbac'->'bac').
edges add: ('abbaa'->'bacabb').

hg edges: edges
	from: [ :edge | edge key ] 
	to: [ :edge | edge value ].

visualizer := QsVisualizer with: hg.
visualizer weightSynthesized: #size.
visualizer averageNodeSize: 200.
visualizer show.
```

Now node 'a' has 4 outgoing relationships to 'b'. One of them we defined directly, the other three have been propagated up in the hierarchy.
