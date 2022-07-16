---
Title: Stakeholder friendly Visual scenario builder
---
#Stakeholder friendly Visual scenario builder
Scenarios are a powerful tool used to understand project requirements. Writing simple Pharo scripts to build scenarios and visualising them to demonstrate the underlying logic has already been done and tested. This helps greatly to communicate a software model with others. However this approach still requires a working knowledge of Pharo and its visualisation engine Roassal.

Instead, a scenario can visually be built first with the help of a tool, and corresponding Pharo classes, methods can be automatically generated. For the generated code, Examples- a special type of test cases in Pharo which return objects- can then be written to create live documentation for that model. In the whole process one can create a conceptual model (that describes entities, messages, process flow, document flow, decisions taken at different stages). Such a conceptual model can be further refined into a Design model by attaching appropriate possible UI views (can be simple mock ups in the beginning) at different points in a scenario.

There exist other visual modelling tools, but one needs to build dedicated parsers, compilers, transformation engines to convert those diagrams into working code. Also, what one can do with the generated code is pretty limited. The underlying environment in our approach- which is Pharo- is the key difference that can bring various possibilities to modelling.


| |
|---|
|<img style="text-align:center" src="/download/Nitish/visual_scenario_builder_mockup.png" />

#Contact
[Nitish Patkar](%base_url%/staff/NitishPatkar)
