---
Title: Tools for easier method lookup
---
#Tools for easier method lookup
When using an unfamiliar API or library developers spend time looking up the proper method to use (in documentation, or other browsers). The aim of the project is to develop a tool that would speed up this process. Through analysis of a large corpus of Smalltalk and Java projects we have mapped classes to methods that are frequently invoked on its instances. Using this data we aim to sort methods by frequency of use. This will expose the developer to methods more frequently used by other developers throughout the corpus. 

TASKS:

-  Enrich the current Pharo smalltalk browser (Nautilus) with the possibility to provide a sorted method view, backed up by the existing data stored in a MongoDB.
-  Create a browser plugin for popular browsers that will, when viewing javadoc pages, provide a sorted method view, backed up by the existing data stored in a MongoDB.

CONTACT:
[Boris Spasojević](%base_url%/staff/Boris-Spasojevic)
