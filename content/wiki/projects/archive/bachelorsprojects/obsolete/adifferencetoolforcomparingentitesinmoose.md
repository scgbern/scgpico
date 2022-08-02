---
Title: A difference tool for comparing entites in Moose
---
#A difference tool for comparing entites in Moose
A Dynamic Trace comparison viewer for the Moose environment.
It enables browsing and visualizing differences between dynamic trace information ( scenarios) captured by execerising the features for a number of versions of a system. The aim of the tool is to enable developers to observe changes in dynamic traces of a system from one version to another thus detect information about the evolution of the system.

The tool should be used to identify feature evolution and associate features with parts of the code.

The detailed requirements are based on a similar tool "Beyond Compare" for comparing files, folders.

Overview of required Features:

A GUI to select which moose models are to be included in the viewer for comparison.
The viewer provides tools such as filters and comparison criteria) to enable the developer to zoom in or out on various differences between scenarios.
Color coding and icons are used to indicate if scenarios are an exact match,mismatch, exists in one version but not in the other
The GUI should provide a means of selecting the display filters.
The viewer should enable users to define rules, select rules and edit rules that determine comparison criteria.
The solution is extendable so that it can be used to perform differences on other entities of the Moose model
