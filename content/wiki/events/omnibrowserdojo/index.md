---
Title: OmniBrowser Dojo
---
#OmniBrowser Dojo
For the OmniBrowser Dojo next Tuesday (December 11, 2007) I suggest the following setup:

We use an image with the latest OmniBrowser and all its tests installed. At the beginning of the Dojo, we agree on one or two projects we want to realize (eg. implementing a Finder-like file browser with OB). Then I will give a very short presentation about OB to reach a common ground.

Afterwards you can team up in pairs to solve the project(s) we agreed on. As a solving procedure I suggest RandoriKata (http://codingdojo.org/cgi-bin/wiki.pl?RandoriKata):
One team works on the beamer, one person of this team is the driver, the other the co-pilot. After a while (20') they change roles. All the other people help the two persons working on the beamer. After 40' we do a short break to discuss on a metalevel how we can improve our progress. Afterwards the other team works on the beamer, and so on. It is crucial to code using TDD or BabySteps. As the test-suite of OB is pretty good, I suggest to use TDD.


---

<b>We will now use</b> shorter cycles: each 10' co-pilot leaves, pilot becomes co-pilot and a new one becomes pilot, as in a ring buffer.


---

Learn more about OmniBrowser


-  http://www.wiresong.ca/OmniBrowser/
-  http://www.iam.unibe.ch/~scg/Archive/Papers/Berg07cOmnibrowser.pdf

Learn more about the Dojo style


-  http://codingdojo.org/cgi-bin/wiki.pl


---

Participants


-  Oscar Nierstrasz
-  Orla Greevy
-  Doru Girba
-  Adrian Kuhn
-  Philipp Bunge
-  David Röthlisberger
-  Lukas Renggli


---

# Notes

We start the Dojo with a quick tutorial by David, explaining the Omnibrowser framework.

Each OmniBrowser application is backed up by a meta-graph, a finit metamodel of the browser with meta-nodes and meta-edges. The first metanode you create is the environment node, which is not displayed, all the other nodes are displayed. The link between metanodes and nodes is not known to the metanode, but rather established by a pair of methods, see below, 


-  <tt>OBSystemBrowser class >> defaultMetaNode</tt> returns the first root node of the meta-graph
-  <tt>OBSystemBrowser class >> defaultRootNode</tt> returns the first concrete root node

We open an Inspector to explore <tt>OBSystemBrowser defaultMetaNode</tt>. And eventually get lost in questions, but now we are doing the Dojo style since twenty minutes.

We are going to implement a simple file finder.

We created packages DojoFinder and DojoFinderTests.

The meta-graph will contain two nodes, root and dir, root has an edge to dir, and dir an edge to itself. Both edges are for navigation and use the #childDirectories method which we will have to implement in DJDirectoryNode.

We created a class DJFileFinder and DJDirectory node.

<b>NB:</b> beware of num lock!

We created a Monticello package and published what we did so far

```
 MCHttpRepository
    location: 'http://www.squeaksource.com/omnidojo'
    user: ''
    password: ''
```

I was away for some time ... bumping into one of my students at the coffee machine ... will try to get uptodate again.
