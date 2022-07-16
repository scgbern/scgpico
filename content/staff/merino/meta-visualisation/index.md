---
Title: Meta-visualisation
---
#Meta-visualisation
A visualisation of Roassal examples. The shape of the nodes show what kind of shapes is used by the major of them in the visualisation such as a box, an ellipse or a labe. The color goes from orange to red depicting with ornate visualisation with few colors and with red the ones with many colors (considering the numbers of elements in the visualisation). Finally the size of nodes shows the number of elements.

```
v:= RTView new.
vis := (((((RTAbstractExample withAllSubclasses) flatCollect:[:each|
	(each selectors 
			
select: [ :symbol | (symbol beginsWith: 'example') 
and: [ (symbol =endsWith: 'Icon') not ]]) 
collect:[:s| [Array with: each with: (each new perform: s)] on: =Error do:[]] .				
	]) reject:#isNil)  
select:[:e| e second isKindOf: RTView]) select:[:e| e second =elements size >0]).
boxes := RTBox new elementsOn: (vis select:[:v| (v second elements 
select:[:el| el shape =isKindOf: RTBox ]) size > (v second elements size /2) ]).
ellipses := RTEllipse new elementsOn: (vis select:[:v| (v second elements 
select:[:el| el =shape isKindOf: RTEllipse ]) size > (v second elements size /2) ]).
labels := RTLabel new elementsOn: (vis select:[:v| (v second elements 
select:[:el| el =shape isKindOf: RTLabel ]) size > (v second elements size /2) ]).

v addAll: boxes.
v addAll: ellipses.
v addAll: labels.

RTMetricNormalizer new
	elements: v elements;
	normalizeColor: [:v| (v second elements collect:#color) asSet size 
/ v second =elements size] using: { Color orange . Color red };
	alphaColor: 0.3;
	normalizeSize: [:v| v second elements size] min: 20 max: 80.
RTGridLayout on: v elements.
v elements @ RTDraggable.
v elements @ RTPopup.
v @ RTDraggableView.
v
```
