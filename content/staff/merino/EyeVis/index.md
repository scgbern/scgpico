---
Title: EyeVis
---

```v := RTView new.
objs := RTObject withAllSubclasses flatCollect:#methods.
els := RTEllipse new color: Color red; elementsOn: objs.
v addAll: els.
RTCircleLayout2 new initialRadius: 50; centeredAt: 150@150; on: els.
els2 := RTEllipse new color: Color red; elementsOn: objs.
v addAll: els2.
RTCircleLayout2 new initialRadius: 150; centeredAt: 150@150;on: els2.
els3 := RTEllipse new color: Color red; elementsOn: objs.
v addAll: els3.
RTCircleLayout2 new initialRadius: 250; centeredAt: 150@150;on: els3.
els4 := RTEllipse new color: Color red; elementsOn: RTObject withAllSubclasses.
v addAll: els4.
RTCircleLayout2 new initialRadius: 350; centeredAt: 150@150;on: els4.
RTEdge 
	buildEdgesFromObjects: (objs select:[:e| e implementors size > 10])
	from: #yourself 
	toAll: [:e| |i| i := e implementors. 
		i size > 10     ifTrue:[(i first:10) collect:#compiledMethod] 
				ifFalse:[i collect:#compiledMethod]  ] 
	using: (RTLine new color: (Color purple alpha:0.01)) inView: v
	fromScope: els2
	toScope: els.
RTEdge 
	buildEdgesFromObjects: objs
	from: #yourself toAll: #dependentMethods 
	using: (RTLine new color: (Color green alpha:0.1)) inView: v
	fromScope: els2
	toScope: els3.
RTEdge 
	buildEdgesFromObjects: objs
	from: [:e| e classBinding value  ] to:#yourself  
	using: (RTLine new color: (Color blue alpha:0.1)) inView: v
	fromScope: els4
	toScope: els3.
v addAll: edges.
(els, els2, els3, els4) @ RTSetEdgeAlpha.
(els, els2, els3, els4) @ RTPopup.
v
```


![Eyevis-example](%assets_url%/files/a3/kpi426fwuxbgywtj17ylf4lvowr3k1/eyevis-example.png)
