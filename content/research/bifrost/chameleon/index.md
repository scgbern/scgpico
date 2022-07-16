---
Title: Chameleon
---
#Chameleon
Software instrumentation monitors the run-time behavior of a system to support a particular kind of analysis.
The behavior of a system can be understood as a set of meta-level events that occur to achieve a goal.
Instrumentation is often realized with the help of reflective mechanisms that reify these meta-events.
Despite many advances, these approaches have a common drawback: the instrumentation of the base level is tightly coupled to the behavior of the development tools that required the instrumentation in the first place.
This prevents development tools from leveraging the event abstractions used by other tools and forces them to respecify the events and their instrumentation.
We propose to resolve this problem by modeling meta-events explicitly.
Instrumentation is dedicated to generating meta-events, and is fully separated from analysis tools which selectively subscribe to these events by applying the observer pattern at the meta-level.
We survey approaches to reflection to establish the key requirements for practical applications, and illustrate the limitations of these approaches.
We introduce Chameleon, a prototype modeling the meta-level as explicit meta-events observed by development tools.
