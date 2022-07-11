---
Title: Stakeholder friendly domain modelling
---

There are many definitions of what a model is, and different people understand the term 'model' differently. At a very basic level, a model is nothing but a logical description of something. In its purest form, a model exists in people's minds. Such a mental model must be expressed in order to share the possessed knowledge with others. Different types of special languages such as graphical e.g. UML, symbolic i.e. state machine or textual e.g. DSLs exists to enable people to express their mental model. The choice of a language depends on the type of a problem one needs to express i.e. a mathematical problem or a domain specific problem. A diagram drawn with a graphical language such as class diagram or a text written with DSL describes the logic one has in his/her mind. The validity (correctness) or trueness of this logic is then tested by executing or running the artifacts created with those languages i.e. by producing simulations, running systems, user interfaces etc.

Domain specific models are special models which express the logic of specific domains- such as public transport or university. The logic in such domains usually contains the concepts present in that domain, their relationship to each other, business rules governing the composition and interaction of entities, workflows etc. As different domains have different concepts involved, there will be dedicated models for those individual domains.

A model can also be expressed using a **programming language** such as **Pharo**. The power of Pharo lets the developers quickly describe the logic, and subsequently it can be tested using test cases, live examples or with live visualisations (produced with Pharo itself). It facilitates a faster feedback loop by becoming an aid for a conversation (check out the video bellow for better and detailed understanding). Such a model can also be questioned to obtain specific answers.

The goal of this project is to build a generic reusable meta-domain model in Pharo and then use it to build a domain specific model for a toy domain. The approach would be evaluated to test its usefulness.

Check out following talk by Tudor Girba to understand the motivation: [approachable software](https://www.youtube.com/watch?v=tbQVIrca6CA)

#Contact
[Nitish Patkar](%base_url%/staff/NitishPatkar)
