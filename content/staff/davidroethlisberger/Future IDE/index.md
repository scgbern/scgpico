---
Title: Future IDE
---
#Future IDE
In my PhD thesis I'm seeking for means how to enhance IDEs in order to help developers maintaining and navigating software. The ultimate goal is to increase developers' productivity in various software maintenance tasks, such as gaining an initial understanding for a software system, correcting defects, adding or enhancing software features, or refactoring the system. We claim that the IDE, being the primary tool used to develop and maintain software systems, should encompass all means and techniques developers need in their daily work, including information about systems' evolution and history, about its running, or its historical navigation.

We contributed the following different techniques and means towards the fore-mentioned goal:


***Feature Environment***

In the feature environment we visualize the execution of different software features. Developers define with scripts or by using a user interface the extent (start, end) of a feature, execute it, and can then visualize one or several features directly in the IDE. In particular, this environment helps developers to visually compare different features to each other to find similarities or differences in their execution and static structure.

This work is available for Squeak Smalltalk. <br>
We conducted a controlled empirical experiment to valdiate this work.

Publications: <br>
[Research Paper](%base_url%/archive/papers/Roet07eFeatureBrowser.pdf) (International Conference on Dynamic Languages 2007) <br>
[Tool Demo Paper](%base_url%/archive/papers/Roet07cFeatureBrowserVissoft.pdf) (VISSOFT 2007)

***Hermion***

Hermion integrates dynamic information directly in the source code. For dynamic languages, runtime types of variables are not known before code execution. Hermion thus analyzes the running system and augments the static source code with type information for variables. Moreover, it also analyzes message sending and shows which methods get invoked at particular call sites in source code. Additionally, Hermion lists all dynamic references occurred in a static artifact, eg. all classes used by a class or method at runtime. Usually, Hermion aggregates its dynamic information over different runs. The extent of dynamic data gathering, that is, the covered packages or classes, can easily be defined in the IDE, starting and stopping of the data gathering is possible even when the subject system is still running.

This work is available for Squeak Smalltalk and parts of it also for Eclipse in the Senseo project (see below). <br>
This work has been validated by gathering qualitative developer feedback.

Publications: <br>
[Research Paper](%base_url%/archive/papers/Roet08bDynamicInfoIDE.pdf) (ICPC 2008) <br>
[Tool Demo Paper](%base_url%/archive/reports/Roet08dHermion.pdf) (ESUG 2008)


***Dynamic Collaborations***

This work visualizes dynamic collaborations between various source artifacts, for instance how packages, classes, or methods communicate to each other. Each source artifact is visualized as a node in an interactive graph, the collaboration to other nodes is shown as an edge. Selecting such an edge shows details about this particular collaboration, for instance for the communication between two packages we present all classes communicating to classes of the other package. For each communicating class, we can navigate to the concrete methods establishing this communication. This dynamic collaboration visualization thus enables developers to detect and investigate dynamic collaboration between source artifacts, also communication not visible or explicit in the static software structure. 

Publication: <br>
[Research Paper](%base_url%/archive/papers/Roet08eDynamicDependenciesIDE.pdf) (WCRE 2008)


***HeatMaps***

HeatMaps are extensions to IDEs aiming at easing the navigation of software systems. They visualize the importance of source artifacts with respect to a given task in a heat coloring scheme, a color gradient from "blue" to "red" where "red" means very important and "blue" somewhat important. To assess the importance of entities, HeatMaps offer various data sources, such as navigation data (eg. recently browsed, frequently browsed), modification data (frequency of modification, recency), evolution data (number of commits, number of versions, authors, etc.), or even dynamic data (number of invocations, memory consumption). These various data sources allow developers to use in each development task the most appropriate heat map. We validated the appropriateness of different heat maps for common development tasks such as defect correction or program comprehension to give suggestions which heat map, or combiniations thereof, should be used in which task.

This work is available in Squeak Smalltalk and parts of it in Eclipse (work in progess).

Publication: <br>
[Research Paper](http://scg.iam.unibe.ch/archive/drafts/Roet09Z-HeatMaps-ICPC2009.pdf) (ICPC 2009)

***Senseo***

Senseo is an Eclipse plugin augmenting Eclipse's Java IDE with runtime information. It uses an aspect-based data gathering tool to collect various dynamic metrics, such as metrics about method invocation, instantiated objects, memory consumption, CPU cycles, or executed bytecodes. Senseo visualizes this information in Eclipse in various static source perspectives such as the source editor, the ruler columns, or the package explorer. Dynamic data is aggregated over several runs to give a more comprehensive view on systems dynamics than profilers or debuggers. Additionally, we integrated several interactive visualizations presenting dynamic information to further improve navigation of the source space. 
We plan to conduct controlled experiments to validate this work.

Publications: <br>
[Research Paper](http://scg.iam.unibe.ch/archive/drafts/Roet09X-Senseo-DynInfo-Eclipse.pdf) (submitted to ICSM 2009) <br>
[Tool Demo Paper](http://scg.iam.unibe.ch/archive/drafts/Roet09Z-HeatMaps-ICPC2009.pdf) (submitted to ICSM 2009)



 <br> <br>
*Ongoing works include:*

***AutumnLeaves***

AutumnLeaves aim at reducing the window or tab plague we typically encounter in modern IDEs by suggesting which windows will not be used anymore in the future and can thus be automatically closed. The algorithms used to identify candidate windows for removal take into account the content displayed in the windows (classes, methods, resources, etc.), the references of this content to content opened in other windows, the type of windows (source code, debugging, inspecting, source control, configuration, etc.), the visibility of the windows (eg. currently displayed or not), the age of the windows, the actions performed therein (selecting, scrolling, modification, etc.), or the interaction between the windows (switching from one window to the other, etc.).<br>
This work will be available in Squeak Smalltalk and Eclipse. It will be validated by means of empirical studies.<br>
We plan to submit a paper about this research to WCRE 2009.

***CollaborationBrowser***

The primary artifact used to navigate a system in this browser are the relations between the entities, not the entities themselves. Such a relation is for instance the collaboration between two artifacts, eg. methods invoking each other or classes who get referenced by each other (instantiation of one class in the other, invoking methods from one class by another). This relation can be determined statically or dynamically.<br>
The CollaborationBrowser then navigates the system by arranging the entities according to these relations. For each artifact, we immediately get its related artifacts and can thus browse the entire system like this.<br>
We will implement the CollaborationBrowser in Squeak Smalltalk and validate it with a controlled experiment.<br>
