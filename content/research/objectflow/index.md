---
Title: Object Flow
---

#Overview

Object Flow Analysis is a novel dynamic analysis to effectively track the flow of objects in object-oriented systems. 


- Explicit representation of object references in the dynamic analysis metamodel
- Object flow is modeled by capturing the transfer of object references
- The model provides an effective way to runtime monitor object flow for back-in-time debugging

 The goal of Object Flow Analysis is to provide a solid foundation for different kinds of dynamic object analyses. Proposed applications include the analysis of dependencies introduced by object aliasing (see [publications](%base_url%/research/objectflow) section). Furthermore, Object Flow Analysis extends beyond traditional applications in reverse engineering. We propose an object-flow-aware virtual machine for back in time debugging. 

#Object Flow Debugging

 This section gives instructions to install and use the object-flow-aware back-in-time debugging system. This system consists of the Object Flow VM, which is an extended Squeak virtual machine and of support code that provides the functionality to introspect execution history from the debugger frontend. A rich user interface to navigate the execution history is provided by the Compass debugger (see below). 

 Authors: [Adrian Lienhard](http://www.adrian-lienhard.ch/contact.html) and Julien Fierz<br /> License: The Object Flow VM and the Compass debugger frontend is distributed under the [MIT license](http://www.opensource.org/licenses/mit-license.php)<br /> Copyright 2008, Adrian Lienhard<br /> 
##Download

The following download includes a compiled VM for the appropriate platform and a prepared image (based on Squeak 3.9) with the Compass debugger frontend: [ObjectFlowDebugger-1.0.zip](http://scg.unibe.ch/download/objectflow/ObjectFlowDebugger-1.0.zip) 

Currently supported platforms


- VM for OS X MacIntel (tested on Mac OS X 10.5.5)
- VM for Linux Ubuntu (tested on Ubuntu 8.04 (Hardy Heron))

To start up the image, execute the appropriate script start-*platform*.\*.

###VM source

Modified VM source code is the package VMMaker in repository [www.squeaksource.com/FlyingObjects.html](http://www.squeaksource.com/FlyingObjects.html)<br /> VM is built using SVN revision 1712 from [http://squeakvm.org/svn/squeak/](http://squeakvm.org/svn/squeak/). 

##Preparing your own Image

 For demonstration purpose, the provided image is sufficient, but if you like to use the debugger for one of your applications, the following installation is required. The Object Flow Debugger requires support code in the image (for example, the definition of the class Alias and the extension of the class Process). To make your own image ready to be run on the Object Flow VM do the following: 


-  After backing up your image, start it up using a standard Squeak VM.
-  In the Monticello browser add the following SqueakSource repository (click the button \+Repository and select HTTP as the repository type). 

 MCHttpRepository location: 'http://www.squeaksource.com/FlyingObjects' user: * password: * 

 Open the newly created repository and load the latest version of the package FlyingObjects. While loading, the system twice warns the used because the class Process is modified ("Process should not be redefined."). Confirm the changes by clicking the button Proceed. After the package is loaded, save and quit the image.

- Now start the saved image using the Object Flow VM. For example using the VM for Mac OS X, you can do so by navigating to the downloaded directory and then execute ./vm-macintel/squeak -quartz /pathTo/yourImage.image (see the start-*platform*.\* files to find out how to start the VM).
- Load the package FlyingObjectsUI from the same repository as in step~2. Save your image to be able to go back to this version whenever needed.
- To test your installation, run the unit tests in the package FlyingObjects-Tests (in the world menu click Test Runner and in the Test Runner's package list select FlyingObjects-Tests). All tests are expected to pass.
##Installing the Compass Debugging Frontend

 If you have correctly installed the Object Flow VM along with its support packages as explained in the previous section, you should now be able to install Compass using the following procedure. 


- Install GraphViz on your system if it is not already installed (Compass uses GraphViz as a graph layouting engine). You can get it from [www.graphviz.org](http://www.graphviz.org/).
- Add the following SqueakSource repository to the Monticello browser. 

 MCHttpRepository location: 'http://www.squeaksource.com/OmniCompass' user: * password: * 


- From this repository load the package named CompassInstaller.
- Execute the following script, which loads all required packages. 

 CompassInstaller bootstrap 

##Starting the Debugger

 There exist two ways of recording a program execution and starting the debugger. The first way of recording data is to use the flyDuring: method implemented in the class Object. For instance, to trace the bank account example, execute the following code: 

 self flyDuring: [ BAAccount example ] 

 The execution of the block is recorded. Now the Compass debugging interface can be started by executing 

 CompassDebugger start 

 The debugger will then show the recorded data. When closing the debugger, the traced data gets deleted. If an error occurs while tracing the code, as usual a small debugger window appears. In addition to the default buttons the new button labelled "Compass" opens the Compass debugger at the location where the error occurred. 

 The second way to debug is to use unit tests. We extended SUnit to re-run a failed test and record its execution before the failure is shown in the debugger. By re-running a test, as usual the small debugger window pops up, and as discussed above the Compass debugger can be started by clicking the "Compass" button. 

##Compass Debugging Frontend

 This section gives an overview of the different views and actions provided by Compass. The screenshot shows the main window of Compass.<br /> <br /> ![Compassscreenshot.png](%assets_url%/files/c9/68pgatq8onucxjfg332yyt12z17li7/compassscreenshot.png)</img> 

 **1. Execution trace.** This view shows the execution trace as a tree in which nodes represent executed methods and block closures. Lines represent the caller relationship from top to bottom right. Nodes are ordered from left to right by the start timestamp of their execution and from top to bottom by their depth on the call stack. The trace can be navigated by clicking on the circles. The thick green arrows represent the flow of the object that was selected in one of the other views (see below). 

 **2. Execution stack.** This view shows the execution stack as it existed at the time when the selected method execution was started. 

 **3. Object flow.** This panel shows the flow of a selected object. The list contains the transfers of a reference of this object (e.g., argument, return, field write, field read, etc.). This allows one to backtrack the flow of the object to find out how the object was passed into this method. The flow given by this list is the same as the one shown graphically in the execution trace (1). By selecting a reference transfer from the list, the focus of the debugger changes to the method execution in which this transfer took place. 

 **4. Source code.** This is the source code of the method of the selected method execution. 

 **5. Executed program statements.** This list shows the reference transfers (aliases) and method sends that occurred during the execution of the selected method or block execution. When an item is selected the corresponding source code statement in the source code pane (4) is highlighted. Additionally, important actions can be executed from the context menu (right-click on an item). The available actions depend on whether an alias or a message send is selected. The most important action is to show the flow of an object. When choosing this action, the flow is shown in the previously described object flow pane (3) and it is drawn in the execution trace (1). You can also choose to explore the forward flow, which brings up a window that shows a tree of how the object was transferred starting at the current selection. 	**6. Variables.** These four panes are the same as in the original debugger. They allow one to inspect the fields of the receiver and of local variables of the selected execution context with respect to the point in time of the current focus. By right-clicking on a variable, similar actions can triggered as in pane (5), for example, selecting an object to highlight its object flow. 

 **7. Dependencies.** This list shows the control flow dependencies of the currently selected method execution (that is, the list of control flow statements present in the current call stack on which the selected method execution depends). By clicking on a dependency, the debugger jumps directly to the method execution and selects the control flow statement in the source code pane (4). 

 **8. Side effects graph.** The side effects graph summarizes the side effects that the execution of the currently selected method and all transitively called methods produced. A red arrow between two objects indicates a field or array slot update. The red arrow points from the updated object to the newly assigned object. To support the understanding of this graph, the following additional information is provided to show the connection between the different objects in the graph. A black arrow indicates the previous value of a modified field and a green arrow indicates a field or array read event (dereference). By right-clicking on an object, a menu with a list of the new field values comes up. By selecting a value, the debugger jumps to the location where the object was written into the field. 

 **9. Navigation history.** Like in a web browser, the navigation history can be used to go step by step back- and forward. In our case, the steps are the context switches (changes of focus in the Compass user interface). If the context is changed, by clicking on the back button you get to the previously selected context. Also bookmarking is supported to be able to quickly jump to bookmarked locations in the execution history. 

#Publications

##Refereed Articles in International Journals


-  [Taking an Object-Centric View on Dynamic Information with Object Flow Analysis](http://scg.unibe.ch/archive/papers/Lien08cObjectFlowAnalysis.pdf)<br /> *Adrian Lienhard, St&eacute;phane Ducasse and Tudor Gîrba*<br /> Journal of Computer Languages, Systems and Structures (COMLAN), Elsevier, vol. 35, no. 1, 2009, pp. 63-79 
##Refereed Articles in International Conferences


- [Practical Object-Oriented Back-in-Time Debugging](http://scg.unibe.ch/archive/papers/Lien08bBackInTimeDebugging.pdf)<br /> *Adrian Lienhard, Tudor Gîrba and Oscar Nierstrasz*<br /> 22nd European Conference on Object-Oriented Programming (ECOOP'08), LNCS, Springer, 2008, pp. 592-615, acceptance rate 19%<br /> Recipient of the *ECOOP 2008 Distinguished Paper* award 
-  [Test Blueprints - Exposing Side Effects in Execution Traces to Support Writing Unit Tests](http://scg.unibe.ch/archive/papers/Lien08a-TestBlueprint.pdf)<br /> *Adrian Lienhard, Tudor Gîrba, Orla Greevy and Oscar Nierstrasz*<br /> 12th European Conference on Software Maintenance and Reengineering (CSMR'08), IEEE Computer Society Press, 2008, pp. 83-92, acceptance rate 28% 
-  [Object Flow Analysis - Taking an Object-Centric View on Dynamic Analysis](http://scg.unibe.ch/archive/papers/Lien07c-ObjectFlowAnalysis.pdf)<br /> *Adrian Lienhard, St&eacute;phane Ducasse and Tudor Gîrba*<br /> International Conference on Dynamic Languages (ICDL'07), ACM Digital Library, 2007, pp. 121-140 
-  [Tracking Objects to Detect Feature Dependencies](http://scg.unibe.ch/archive/papers/Lien07aFeatureDependencies.pdf)<br /> *Adrian Lienhard, Orla Greevy and Oscar Nierstrasz*<br /> 15th IEEE International Conference on Program Comprehension (ICPC'07), 2007, pp. 59-68, acceptance rate 33% 
##Peer-reviewed Workshop Papers


-  [Exposing Side Effects in Execution Traces](http://scg.unibe.ch/archive/papers/Lien07dSideEffectsPCODA.pdf)<br /> *Adrian Lienhard, Tudor Gîrba, Orla Greevy and Oscar Nierstrasz*<br /> 3rd International Workshop on Program Comprehension through Dynamic Analysis (PCODA), 2007, pp. 11-17 
-  [Capturing How Objects Flow At Runtime](http://scg.unibe.ch/archive/papers/Lien06aCapturingHowObjectsFlowPCODA06.pdf)<br /> *Adrian Lienhard, Stéphane Ducasse, Tudor Gîrba and Oscar Nierstrasz*<br /> International Workshop on Program Comprehension through Dynamic Analysis (PCODA'06), 2006, pp. 39-43 <br /> View [Bibtex](%assets_url%/scgbib/?query=object-flow&filter=Year) of all publications<br /> <div id="lastModified">November 26, 2008; [lienhard](http://www.adrian-lienhard.ch/) [ ![http://www.w3.org/Icons/valid-xhtml10](http://www.w3.org/Icons/valid-xhtml10)](http://validator.w3.org/check?uri=referer) [ ![http://jigsaw.w3.org/css-validator/images/vcss](http://jigsaw.w3.org/css-validator/images/vcss)](http://jigsaw.w3.org/css-validator/check/referer) </div> 
