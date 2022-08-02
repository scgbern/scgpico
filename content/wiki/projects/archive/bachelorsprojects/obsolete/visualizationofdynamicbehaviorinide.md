---
Title: Visualization of dynamic behavior in IDE
---
#Visualization of dynamic behavior in IDE
IDEs normally purely focus on the static parts of software system by presenting packages, classes, methods, etc. to the developer. To get a complete understanding for a system, however, looking at the running of programs is often more unavoidable. Developers can use debuggers to study the dynamic behavior, but it would be much more convenient if the IDE could always present information about the dynamic structure in a program, eg. how a selected class communicates to other classes or how different packages collaborate with each other, etc.
This project aims at implementing several visualizations directly in the IDE (Squeak Smalltalk) to be presented to the developer where he works with the source code, ie. in the system browser.
This work can take use of various existing tools:

-  Comprehensive framework to collect dynamic information (Reflectivity, Hermion)
-  Visualization framework (Mondrian)
-  Browser framework (OmniBrowser, Hermion)

The main challenge of this project is hence to invent easy to understand and possibly interactive visualizations for dynamic information to be embedded tightly in the IDE. For starters, an interesting visualization could be a sequence diagram similar to the one of UML ([http://www.ibm.com/developerworks/rational/library/3101.html](http://www.ibm.com/developerworks/rational/library/3101.html))

This project could also be extended to a Master's project.

Contact: [David Roethlisberger](%base_url%/staff/davidroethlisberger)
