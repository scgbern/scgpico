---
Title: Collective Behavior
---
#Collective Behavior
&nbsp;

<div style="float: right;">![Fishswarm.png](%assets_url%/files/a9/28tb0n5sk45o3kfdbub4hklgz5ur6v/fishswarm.png)</div>
```
 Shark shark = new Shark();
 Collection<Fish> swarm = new ArrayList();
 for ( ... ) swarm.add(new Fish());
 ...
 swarm.mimicryAttack(shark);
```

&nbsp;

Swarm Behavior is a new composition operator that associates behavior with a collection of instances. The lookup of swarm behavior is based on the element type of a collection and is thus orthogonal to the collection hierarchy. 

The method <code>mimicryAttack</code> &hellip;


-  is defined in the lexical scope of the <code>Fish</code> class,
-  is available for all subtypes of <code>Collection</code>, but
-  limited to collections that contain <code>Fish</code> instances.
-  can be overridden by subclasses of the <code>Fish</code> class.

&nbsp;

NB, useful for both static and dynamic languages.


---

# Publications


-  Adrian Kuhn, David Erni, Marcus Denker, "Empowering Collections with Swarm Behavior," to be submitted to somewhere sometimes, (mail us to get a copy).


-  David Erni, ["JAG &ndash; a Prototype for Collective Behavior in Java,"](http://www.iam.unibe.ch/~scg/Archive/Projects/Erni08a.pdf) Technical Report, University of Bern, August 2008, Bachelor's thesis.
-  Adrian Kuhn, ["Collective Behavior,"](http://www.iam.unibe.ch/~scg/Archive/Papers/Kuhn07bCollectiveBehavior.pdf) Proceedings of 3rd ECOOP Workshop on Dynamic Languages and Applications (DYLA 2007), August 2007.

# Downloads


-  For Ruby, see [Swarm Behavior in Ruby](%base_url%/wiki/alumni/adriankuhn/swarmbehavior/ruby), just a quick hack...
-  For Smalltalk, [http://www.squeaksource.com/CollectiveBehavior.html](http://www.squeaksource.com/CollectiveBehavior.html)
-  For Java, [@erni/dist/jag.zip](https://www.iam.unibe.ch/scg/svn_repos/erni/dist/jag.zip) (tutorial see appendix of [David's thesis](http://www.iam.unibe.ch/~scg/Archive/Projects/Erni08a.pdf))

# People


-  [Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn)
-  David Erni

 
