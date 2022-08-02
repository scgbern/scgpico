---
Title: Navigate source space using a Heat Map Color Scheme
---
#Navigate source space using a Heat Map Color Scheme
A well-known issue we encounter in any development environment we use to navigate the source space of a large software system is the difficulty to quickly identify and locate source artifacts (packages, classes, or methods) of interest in a specific scenario. In this project we propose the usage of color or heat maps to highlight important artifacts according to one or a combination of specific criterias. If we for instance want to understand a specific component of a system, eg. a feature, we could color all enitites of the system accorrding to their dedication to that feature. A class only used in this specific feature or a class whose methods are all used would get colored in deep red ('hot'), a class only contributing a single method to this feature would be colored in blue ('cold'), a class not being used in this feature at all won't get any color. Another possible criteria to be used to color the artifacts is recently modified or recently browsed. What we have already modified in the recent past is normally more important than what has not been modified for a while. Similarly, often we have to go back and forth several times to same the piece of code to finally understand or modify it correctly, hence being able to quickly grasp by means of a heat map what we have browsed how recently is of great value.
Another promising criterion for a heat map could be test coverage: What classes, methods have been covered with tests to which degree? A class of whose ten methods only three are covered with tests would get a yellow color. We might also use color maps based on dynamic information such as memory consumption or execution time. Running a specific feature of a software and then seeing in the IDE at a glance which source entities consumed the most execution time (red) and which are most likely not responsible for any performance issues (blue) is amazingly interesting.
Another project aims at also using historicial information about the evolution of the system as basis for color maps: [Exploiting software history in the IDE](%base_url%/wiki/projects/mastersbachelorsprojects/obsolete/exploitingsoftwarehistoryintheide)

The contribution of this project is threefold:
\* Enable the IDE (either Squeak/Pharo or Eclipse) to use color maps, for instance by coloring the label or the background of an item (class, method, package, whatever; entities such as packages containing other entities would need to aggregate the coloring of lower-level entities)
\* Implementing several of the criteria for color mapping mentioned above (techniques to gather the needed data have already being implemented partially)
\* Experimenting with different criteria and assessing them empiricially by means of user experiments

Contact: <a href="mailto:roethlis@iam.unibe.ch">roethlis@iam.unibe.ch</a>

