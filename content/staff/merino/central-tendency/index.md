---
Title: Applying ''contrast'' to the use of colour in visualisation
---
#Applying ''contrast'' to the use of colour in visualisation
In a software visualisation normally metrics are mapped to visual properties such as shape, size or colour. When mapped to colour, typically, the darker the colour the higher the metric value. The code below implements an example of this kind of use.

```
v := RTView new.
objs := RTObject withAllSubclasses.
max := objs max:#numberOfMethods.
els := RTBox new height:#numberOfMethods; elementsOn: objs0.
v addAll: els.
RTEdgeBuilder new
	view: v;
	objects: objs from: [ :entry | entry superclass ].
RTMetricNormalizer new
	elements: els;
	normalizeColor: #numberOfMethods using: {Color green . Color black}.
RTTreeLayout on: els.
els @ RTPopup.
v @ RTDraggableView.
v open
```

The result is shown in the following picture. Each box represents a class from Roassal source code and edges show inheritance relationship. Colour is used to map the number of methods NOM. 

![Roassal_example](%assets_url%/files/a3/9o6dupmvy1potwsscbajd5igmr1z4l/nom.png)
*Right-click on the image and open it in a new window for a larger picture*

This seems intuitive and effective. It clearly helps to spot outliers (we can easily spot two classes with a huge amount of methods). We can even compare the value of the metric between two classes and realise which one has more methods (in most cases). 

Hypothesis: "There are software metrics that developers do not want to minimise but they want to balance". Classes with few methods can represent refactoring opportunities as well as classes with many methods, so both cases are interesting for analysis when comparing the number of methods among classes. 

I propose to use a central tendency measure, such as the median, to provide users with a reference for balancing the values of a software metric. The idea is to split the values of the metric into three groups: the ones that are equal to the median (so represent classes with a right number of methods), the greater ones and the smaller ones. The last two cases are coloured following the metaphor: the darker the colour the farthest the value is from the median. We highlighted the values that are equal to the median in red. The code below shows the implementation:

```
v := RTView new.
objs := RTObject withAllSubclasses.
median := (objs collect: #numberOfMethods) median.
els := RTBox new
	height: [ :e | e numberOfMethods ];
	color: [ :e | 
		e numberOfMethods < median
			ifTrue: [Color r: 0 g: e numberOfMethods / median b: 0]
			ifFalse: [ 
				e numberOfMethods = median
				ifTrue: [ Color red ]
				ifFalse: [ Color r: 0 g: median / 
						e numberOfMethods b: 0 ] ] ];
		elementsOn: objs0.
	v addAll: els.
	RTEdgeBuilder new
		view: v;
		objects: objs from: [ :entry | entry superclass ].
	RTTreeLayout on: els.
	els @ RTPopup.
	v @ RTDraggableView.
	v open
```

The result is shown in the following picture:

![Median_based_visualisation](%assets_url%/files/01/c38bk1mxo0wt188b957d58yj2lg48n/nom_median.png) 
*Right-click on the image and open it in a new window for a larger picture*

*Discussion*

When using colour to map metric values a central tendency value, such the median, provides a reference to the user to understand how far from the equilibrium an entity is. I presented the number of method NOM as an example of such kind of metric. 

Mapping the values of such kind of metrics linearly (or using other kind of function) to classes seems less effective (to spot little differences) than comparing them with a central tendency measure like median. 

When the user is exposed to the visualisation there are two situations expected: interesting spots of the visualisation attract his/her attention; and when analysing an interesting spot visual properties (colour and size) give accurate support for comparing the metric values. In that sense, colour helps to the former and size gives support to the later.  

Some of the metrics that I think are good candidates for this kind of analysis are:

- Number of Lines of Code
- Number of Classes
- Cyclomatic complexity
- Weighted Method Count
- Depth of Inheritance Tree

Below there is an animated GIF (@http://gifmaker.cc) showing the differences:
![Analysing NOM using median to contrast colour](%assets_url%/files/eb/ptihkcrcpcc9df9zmiwxkyeagf55df/nom_gif.gif)

*Right-click on the image and open it in a new window for a larger picture*

In the following article I discuss on a [statistical analysis of the data to provide an accurate color intensity](%base_url%/staff/merino/central-tendency/statistical-analysis).
