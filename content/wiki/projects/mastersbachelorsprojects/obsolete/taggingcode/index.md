---
Title: Tagging Code
---
#Tagging Code
The goal of this project is to introduce [tags](http://en.wikipedia.org/wiki/Tag_(metadata)) as the meta-model to organize Smalltalk code and to build programming tools around the new model. It should be possible to associate any entity of Smalltalk (packages, namespaces, classes, methods, variables, parse-tree nodes) with any number of tags, thus describing the item and allowing efficient classification and search of information. 

Tags are first class objects, that can be explicit or implicit. Explicit tags are somehow similar to existing class-categories and method-protocols, but can be applied uniformly to all code entities. Explicit tags can be further used to store information such as the license (including the full license text), the author (including contact information) and the package (including repository information, post-load code, dependencies) with the entity. Implicit tags are automatically applied by the system, depending on conditions and events. For example, code failing certain coding standards would be tagged automatically, or test-coverage or type information could be attached directly to the relevant code.

The project includes building a first-class model of tag objects, that can be attached to any code entity. Furthermore the project requires to build (or extend the existing) tools with the new concept. Tags should nicely incorporate into the workflow of developers. 

Contact: [Lukas Renggli](%base_url%/staff/lukasrenggli)
