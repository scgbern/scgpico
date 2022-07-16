---
Title: Pimon
---
#Pimon
Pimon is a small visualization framework written in Smalltalk.

# The Pimon DSL

The figure drawing DSL of Pimon is targeted at end users of vector drawing applications. For example, figures are grouped and aligned by bottom, rather than forcing the programmer to wrap his head around vector algebra with all its x's and y's.


---

Known uses of the Pimon engine


-  [RBPolymetricView](%base_url%/wiki/projects/archive/pimon/rbpolymetricview), a software visualization tool for the Refactory Browser. 

Blog posts


-  [ZIP Code map of Switzerland](http://www.iam.unibe.ch/~akuhn/blog/2008/10/zip-code-map-of-switzerland/)


---

## Easy readable layout code

My vision, when writing Pimon, was to abstract the implementation of layout and arrange code from coordinates and numbers, and take it to a human readable level. Rather than summing up or subtracting X and Y values, when using Pimon, engineers can write code using natural language commands. Or more precise, all the method names of the layouting interface correspond to commands known from vector drawing UIs. Think of the "group / ungroup" button, or of the "align group by center" button, or of the "arrange group with same gap" button.

For example, a tree level is arranged as follows 

```
  TreeLevel >> arrange
    | group |
    group := Group new
        addAll: self treeChildren;
        horizontalWithGap: 4;
        alignTop.
    Group new
        add: self treeParent;
        add: group;
        verticalWithGap: 16;
        alignCenter.
    self resizeToElements. 
```

Using conventional layout code, the above code would look as follows

```
  TreeLevel >> arrange
    | x y bottom right parentLeft |
    x := 0.
    y := self treeParent height + 16.
    bottom := self treeParent height.
    self treeChildren do: \[ :each |
        each moveTo: x @ y.
        bottom := bottom max: (y + each height).
        x := x + each width + 4 ].
    right := self treeParent width max: x. 
    parentLeft := (right - self treeParent width) / 2.
    self treeParent moveTo: parentLeft @ 0. 
    self resizeTo: right @ bottom.
```

The latter implementation might contain a bug &ndash; who knows? &ndash; unless taking the time to solve a mathematical riddle, it can not be told. Also, coding that mathematical riddle took at least 10 times longer than coding with Pimon...

NB: <i>one bug has already been reported to me, which I fixed in the meantime, but maybe there is more...</i>


---

## Change list

<p title="A tooltip is a short message that appears when the pointing device pauses over an object."><b>August 20, 2007</b> &mdash; as in [HTML 4.1](http://www.w3.org/TR/html401/struct/global.html#adef-title) an element's title attribute is displayed as tooltip.</p> 

<b>August 17, 2007</b> &mdash; featuring [DOM Events, Level 2](http://www.w3.org/TR/DOM-Level-2-Events/), see <code>Pimon-Event</code> package.

# Download

Currently Pimon is at the stage of a prototype, interfaces and protocols may be subject to change. You are kindly invited to check out Pimon and provide me feedback on the current state.

Pimon (including <i>RBPolymetricView</i>) is available at the following Store coordinates

```
  interface: PostgresSQLEXDIConnection
  environment: db.iam.unibe.ch_scgStore
  user name: storeguest
  password: storeguest
  table owner: BERN
```

[Please contact AA](%base_url%/wiki/alumni/adriankuhn), for questions and feedback.
