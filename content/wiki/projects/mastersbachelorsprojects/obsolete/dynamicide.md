---
Title: Dynamic IDE
---
#Dynamic IDE
A lot of reasearch has been carried out into building reverse engineering tools based on dynamic analysis, for example to facilitate program understanding or to identify features. In development environments such tools are rare, although developers spend a lot of their time understanding how a program works (or why it does not work). This is a complex task because not all necessary information can be extracted from studying the static source code. As object-oriented paradigms such as late-binding or polymorphism are widely used in todays systems, it is virtually impossible to understand those systems by just reading the static source code.
Modern IDEs provide the developer with powerful debuggers, allowing him to step through the running of a program. However, debuggers focus on one slice through the program, they are often separated from the usual (class-based) view on the program and the information they present gets lost as soon as the debugging session gets closed.
What we actually need are IDEs that directly integrate dynamic information in the views and tools working with static source artifacts.
A first prototype of such an IDE is Hermion, it enriches the source code with dynamic information, makes existing tools aware of this information or presents dynamic references between various static source entites, e.g., references between classes. 
But Hermion can be extended in various and promising directions. One direction is to also embed profiling information into the static view on source code, eg. how much time has been spent to execute a method. Or the flow of objects could be visualized directly in the IDE. Or this information could be used to give hints to the developer, eg. task-relevant hints to fix bugs or to implement new features. Another useful enhancement would be to tightly integrate interactive visualizations of the dynamics of a program to be used by the developer for maintaining or extending this program.

The current tools we use to gather dynamic information are powerful enough to support all the mentioned ideas. To realize this project you can hence focus on what to do with this information in the IDE in order to provide useful means to developers.

contact: [Adrian Lienhard](%base_url%/staff/adrianlienhard), [David Roethlisberger](%base_url%/staff/davidroethlisberger)
