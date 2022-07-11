---
Title: Senseo Users Guide
---

This page guides you through the installation of Senseo and its usage. Furthermore, we describe the different features and enrichments of Senseo.

#Requirements

To be able to use Senseo with all its features a standard Eclipse installation in version **3.4.1** bundled with JDT is required. Furthermore, you preferably have a current version of the Java SDK installed on your system. We propose that you unpack and install the version to be used in your Home-Directory in *~/java/current*.

**Note to OS X users:** Due to limitations in Apple's bundling of the Java Virtual Machine, Senseo is not able to gather dynamic information with the standard Apple JVM. However, there are free (as in free software) implementations of the Java Virtual Machine available for Mac OS X such as the *Soyalatte JVM*. Soyalatte is known to work with Senseo. We recommend an installation in ~/java/current.

#Installation

Senseo can be installed from an Eclipse update site. You need to add the following URL as an Eclipse Update Site in the Eclipse Update Manager:

**Update-Site:** http://scg.unibe.ch/download/senseo/eclipse/

You will then be able to install the senseo plugin within your Eclipse installation. After successfully restarting Eclipse, senseo is enabled and immediately available.

#Gathering Data

To gather dynamic information you can create a new Run Configuration (See figure below) in Eclipse for your current project similar as you would normally launch your application within Eclipse. You need to choose a Senseo Profiler Run Configuration and select the *Main*-class of your project, to specify the entry-point to your application. Afterwards, you can launch your application. First, Senseo prepares your application to be instrumented by Major and then launched the packed JAR-file with Major. To stop instrumentation you can simply terminate your application. Please note that you need to run an initial instrumentation for the first execution (see Paragraph Initial Instrumentation for further information).

![Run Configuration](%assets_url%/files/ea/vpzz4rkqln1ydzer9foymd3h2nw6qz/runConfiguration.png)


**Note:** Currently we require your project to follow the convention that all necessary source code is located in a folder called src/ within your project. We use this convention to generate a *JAR*-File to be be passed to Major.

**Initial Instrumentation** Major requires an initial instrumentation of the JDK with which your application is executed. This means that prior to your very first execution of an application in Senseo you need to open the Senseo Runtime Configuration and select the *Major Setup* tab (See the figure below). In this view, clicking on the button *Instrument* starts the instrumentation of the JDK in your Home-Directory in ~/java/current. This can take up to several minutes and on slower machines even up to half an hour. However, this initial instrumentation is only required once prior to the first usage of Senseo.

![Major Instrumentation](%assets_url%/files/fc/a27zv14fan803x68nrr5ur4uruso2o/majorInstrumentation.png)

#Visualizations / Enrichments

Senseo features different kind of enrichments and visualizations to integrate the gathered dynamic information in Eclipse. The following sections explains each of these enrichments in detail and explain their functionalities.

##Tree Metrics

In the various trees of Eclipse Senseo shows for each artifact (package, class, etc.) either a red, yellow, or purple icon to represent the metric value of a particular artifact. If the current selected metric is for instance *number of invocations*, then a red colored artifact means that the method have been invoked a lot. For packages or classes, the metric value is aggregated over all methods defined in a package or class. The figures below showing the Package Explorer and the Hierarchy Overview give two examples how the different trees are enriched with the current selected metric.
For instance, in the package tree we can distinguish between three metric values: high (red), average (yellow), and low (purple).
To change the metric (eg. from *number of invocations* to *number of created objects*), you can use the switch (depicted with (A) in the figure at the top of this article).

![Package Explorer](%assets_url%/files/fb/d5hy4pausx2qeczm0o0n1o3i05yjbi/packageExplorer.png)

![Hierarchy Decorators](%assets_url%/files/55/a98mnj9sofp8nj6atpsbj5ej0qgs24/hierarchyDecorators.png)

##Ruler Annotations

The figure below shows an example of rulers enriched with colored annotations within the source code view. Senseo provides enrichments on both side of the source code view displaying HeatMaps and annotations. The hotness of these enrichments are based on the currently selected metric.

![Overview Ruler](%assets_url%/files/d9/9asbceatng9ud77azvboyms1roxna1/overviewRuler.png)

**Left Ruler Column Metrics.** The left ruler column provides local information for the currently displayed methods of a class. It shows a color gradient from blue to red with six distinct color values. The color values have the same meaning as in the package tree (the more red, the more active is the current method for the current metric). The metric shown in the ruler column is also changable with switch (A) as shown in the overview figure at the top of this guide.
A white color in the column means that this method has not been invoked.

**Right Overview Ruler Column Metrics.** This overview ruler provides an overview of the entire source file, that is, of all classes and methods defined in that file, also methods currently not visible in the source code view. The colors encode the same meaning as in the package tree or in the left ruler column. In the overview ruler, Senseo just shows three distinct color values as in the package tree.


##Tooltip Metrics

The tooltip, appearing when mouse-overing a method declaration or invocation, shows more detailed information about how a particular method was used at runtime. The two figures below give an example of such tooltips. For instance, the tooltip shows how often a method was invoked (*callers count*), how many objects it created, the size of all created objects (in bytes), or the number of methods this method invoked (callees). Furthermore, the tooltip contains a list of actual callers of this method, a list of actual callees, a list of argument types, and a list of return types. With *type* we refer to the class of the object that has been actually used as argument or return value, not the statically defined type.
Note that tooltips are interactive, you can for instance click on a return type to navigate to that particular class. A tooltip encompassing dynamic information only appears if there is dynamic information available about a method or a method invocation. Otherwise, if a particular method has not been invoked or has not been analyzed by Senseo, we show the traditional (Javadoc) tooltip.

![Methodname Tooltip](%assets_url%/files/44/2t6f4l10tmo1xi419bflt3jfrz6gps/methodNameHover.png)

![Callee Tooltip](%assets_url%/files/44/3jdctxob3l0ilpmf99m6pduzrekj3f/calleeHover.png)

##CCRC

The CCRC presents the call stack with the method in the center as the root (by default the *main* method). All direct callees of a method are arranged in a ring around that particular method, the indirect callees appear in the next ring, and so on. The colors used in the CCRC are the same as used in the left ruler column (gradient from red to blue). 
You can navigate in the CCRC, for instance zoom in or out, click on a method to select all occurrences of this method in the CCRC (all occurrences are colored in gray with a red border), double-click in a method to focus on this method, that is, turn it into the new center of the CCRC, or you can press *Ctrl* and click on a method to view its source.
The CCRC is particularly useful to detect performance bottlenecks, for instance, methods that trigger the invocation of many nested methods (that is, a method which has many subsequent rings).

![CCRC](%assets_url%/files/14/k13uqvzcjezi8q9hbzqk0arfhng4lh/ccrc.png)

##Collaboration Overview

The Collaboration Overview shows you either for a selected package, a selected class, or a selected method with which other packages, classes, or methods it collaborates. A collaborator is either a sender (the other artifact invokes methods in this package or class) or a callee (this package, class, or method invokes methods in this other package or class).
In this view you can easily locate all dependencies of an artifact.

![Collaboration Overview](%assets_url%/files/d9/rx01pqo17nxgr9rd571nswqxnekkxu/collaborationOverView.png)

![Collaboration Overview on a Class Level](%assets_url%/files/f4/56xws9ygybi28xcc0qffqfow1aioce/collaborationOverviewClassLevel.png)

![Collaboration between classes](%assets_url%/files/8f/7wvz1xqilijl4uwbno6n5b5xk4y05k/collaborationBetweenClasses.png)
