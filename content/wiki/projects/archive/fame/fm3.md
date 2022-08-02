---
Title: FM3
---
#FM3
<b>FM3</b> or <b>Fame meta-metamodel</b> is a model to describe metamodels.


-  FM3 is self-described in itself. 
-  FM3 is a superset of a subset of EMOF.
-  FM3 is small and simple.
-  FM3 is extendable.

FM3 applies lessons learned and best practices from using EMOF in the [Moose and Famix](http://moose.unibe.ch) project:


-  FM3 allows packages to weave methods into existing classes of other packages. Using this, Famix extensions may extend the core specification of the model.
-  FM3 is EMOF reduced to the max. We removed anything that was not used by Famix. For example, EMOF specifies multiplicity of properties using <code>lower: Integer</code> and <code>upper: Unlimited</code>. As upper may possibly be unlimited, EMOF even introduces <code>Unlimited</code> as core primitive type, messing up any implementation. Analysis of existing models showed however that we use <code>0..1</code> and </code>0..\*</code> only! Hence, FM3 models multiplicity of properties using <code>multivalued: Boolean</code>, simple and no need for fancy primitives.

See also:

-  [MSE](%base_url%/wiki/projects/archive/fame/mse)


---

##FM3.Element

is an abstract class with attributes


-  Element <code>owner</code> (derived)
-  String <code>fullName</code> (derived)
-  String <code>name</code>

with these constraints


-  <code>name</code> must be alphanumeric
-  <code>fullName</code> is dervied recursively, concatenating <code>owner.fullName</code> and <code>name</code>
-  <code>fullName</code> is seperated by dots, eg <code>FAMIX.Class.allAttributes</code>

##FM3.Class

subclasses NamedElement with attributes


-  Boolean <code>abstract</code>
-  Boolean <code>primitive</code> (derived)
-  Boolean <code>root</code> (derived)
-  Class <code>superclass</code>
-  Package <code>package</code> (container, opposite Package.classes)
-  Property <code>allAttributes</code> (derived, multivalued)
-  Property <code>attributes</code> (multivalued, opposite Property.class)

with these reserved instances 

```
 OBJECT := (FM3.Class (name 'Object') (root true))
 BOOLEAN := (FM3.Class (name 'Boolean') (primitive true) (superclass (ref: Object)))
 NUMBER := (FM3.Class (name 'Number') (primitive true) (superclass (ref: Object)))
 STRING := (FM3.Class (name 'String') (primitive true) (superclass (ref: Object)))
```

for any other instance of MF3.Class, these constraints apply


-  <code>owner</code> is derived from <code>package</code>
-  <code>superclass</code> is not nil
-  <code>superclass</code> must not be a primitive
-  <code>superclass</code> chain may not include cycles
-  <code>package</code> must not be nil
-  <code>allAttributes</code> is derived as union of <code>attributes</code> and <code>superclass.allAttributes</code>
-  only one of <code>allAttributes</code> may have <code>container = true</code>
-  <code>allAttributes</code> must have unique names
-  in particular, none of <code>attributes</code> may have the name of any of <code>superclass.allAttributes</code>

// TODO, I am not sure about this ... it does not allow overloading of attributes, does anyone need overloading?

##FM3.Package

subclasses NamedElement with attributes


-  Class <code>classes</code> (multivalued, opposite Class.package)
-  Property <code>extensions</code> (multivalued, opposite Property.package)

with these constraints


-  <code>owner</code> is nil
-  <code>classes</code> must have unique names
-  for each element of <code>extentions</code>, it class is not in <code>classes</code>

##FM3.Property

subclasses NamedElement with attributes


-  Boolean <code>composite</code> (derived)
-  Boolean <code>container</code>
-  Boolean <code>derived</code>
-  Boolean <code>multivalued</code>
-  Class <code>class</code> (container, opposite Class.attributes)
-  Class <code>type</code>
-  Package <code>package</code> (opposite Package.extensions)
-  Property <code>opposite</code> (opposite Property.opposite)

with these constraints


-  <code>owner</code> is derived from <code>class</code>
-  <code>composite</code> is derived from <code>opposite.container</code>
-  <code>container</code> implies not <code>multivalued</code>
-  if set, <code>opposite.opposite</code> must be self
-  if set, <code>opposite.class</code> must be <code>type</code>
-  <code>class</code> must not be nil
-  <code>type</code> must not be nil

and these semantics


-  <code>container</code> property chains may not include cycles
-  <code>opposite</code> properties must refer to each other
-  any multivalued property defaults to empty
-  boolean properties default to <code>false</code>
-  non primitive properties default to <code>null</code>
-  string and number properties not have a default value // TODO is this wise?
