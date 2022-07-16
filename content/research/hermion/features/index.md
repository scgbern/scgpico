---
Title: Features
---
#Features
<i>OB-Enhancements</i>

OB-Enhancements adds several features to OmniBrowser, some are listed here:


-  Smart Groups
-  Multiple Selection of methods
-  Packages instead of class categories in the first column
-  Integration of Monticello actions (update, publish, changes)
-  Back and forward buttons
-  De-selection of elements (eg. methods)
-  Remembering of last selected method name to select a method with the same name when changing class (in particular useful in hierarchy browser)
-  Double-clicking on a class in the hierarchy browser centers the view on this class
-  Integrated search as a special smart group, search results are hence stored

<i>Hermion</i>

Hermion enriches the IDE with dynamic information such as:


-  Reference view for classes and methods: a list of classes that are used at runtime in the current selected class or method
-  Message send navigation: Navigate directly in the source code of a method to that methods that has been invoked at runtime at this location
-  Sender navigation: Navigate to all methods that have invoked the current method at runtime
-  Type information - see what kind of objects have been stored at runtime in variables of a method
-  Reference browser - browse your code based on the dynamic references between different classes and methods

<i>Visualizations</i>

Besides OB-Enhancements and Hermion, there's also a package available that visualizes the source code dynamically in your IDE. Available visualizations are UML diagrams, system complexity view, class blueprint and reference view. The last two visualizations take dynamic information into account, hence they need Hermion, while the others just require OB-Enhancements to be loaded.
To install these visualizations load the package 'OB-Mondrian-Diagrams' from [http://source.wiresong.ca/ob/](http://source.wiresong.ca/ob/). Note that you need to have loaded (in this order) the packages 'Announcements' and 'Mondrian' to run the visualizations successfully.
