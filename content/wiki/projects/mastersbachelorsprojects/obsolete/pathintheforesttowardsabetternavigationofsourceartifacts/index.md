---
Title: Path in the Forest - Towards a better navigation of source artifacts
---

Efficiently navigating the source space of a large software system consisting of many hundred of classes is often a challenge. IDEs do little to help and guide developers facing this challenge, even though useful information being very useful to find the right path in the huge and dark forest of software systems is right at hand or could easily be gathered.
The goal of this Master's project is to experiment with various mechanisms to guide the developer through the forest. One mechanism is for instance to provide the developer with a list of related entities while browsing specific classes or methods. Different entities might be related due to their dynamic communication, due to the fact that they have been navigated, changed, or introduced together. Or because they have the same author or the same age. One part of the project is to study the effectiveness or usefulness of these various means to determine related entities.
Another part is to assess other ways to guide the developer by exploiting the information of relatedness in different ways than just presenting lists to the developer. One path here could be to present task-dependent information or, even better, to provide an alternative source space browser which does not present source artifacts by their static structure (eg. package -> classes -> methods), but by how they are otherwise related to each other. As the information of relatedness is orthogonal to a system's static structure, such a different view on the system could be very efficient for performing maintenance tasks.

This project will  address the following research questions:

-  What kind of means to assess relatedness between source entities are useful for a developer navigating a source system?
-  Based on these relatedness measures, what are useful mechanism to actually present this information to the author? How can we guide the developer through the forest?
-  How can we best exploit this relatedness of source artifacts, information which is orthogonal to a system's static structure, to navigate this very system?

Minor questions to be addressed by this project are how to gather the information we use to assess software entities relatedness, how to store it, and how to keep/update it.
Work concerning the assessment of relatedness based on dynamic communication between source artifacts has already been done.

Contact: <a href="mailto:roethlis@iam.unibe.ch">roethlis@iam.unibe.ch</a>

