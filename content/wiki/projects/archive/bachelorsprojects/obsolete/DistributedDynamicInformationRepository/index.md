---
Title: Distributed Dynamic Type Information Repository
---

#The Context
Knowing which of the possible implementations of a method are called at a given point in the code is valuable in different software engineering contexts, for instance,

-  when changing an existing API of a library or base system, their clients need to be updated
-  when in the IDE one wants to support the development process with precise code completion and senders/implementers information
-  in reverse engineering tools, e.g., to identify package interdependencies, or
-  in code search engines to provide examples of possible uses of an API.

For today's software projects using dynamic programming languages, precise method caller/callee information, however, is difficult to obtain for two reasons:

(1) Static type inference often cannot provide exact data regarding where a method is called from. Indeed, if a method is defined in multiple classes, it is sometimes impossible to know which of the actual implementations is called at a given point in the code just by performing static analysis. An interesting solution is to employ runtime analysis, (however, with the limitation of it not necessarily being complete).

(2) Analysis methods typically run locally in a single developer's IDE. With today's increasingly distributed and collaborative programming style (more sharing and reusing of libraries, e.g., through Github), local inference alone does not suffice to detect interdependencies between distributed projects. Clients of a library or framework are often unknown to its developers. Â This needs not be so: just like code is shared over the Internet, locally inferred information about how libraries are used can be shared too.

#The Project
To address the evolution problems of today's libraries and frameworks, we propose that runtime type analysis should be globally shared between all the developers of a given software ecosystem through a common type information repository.


To enable such a scenario, in this project you will create a central database, which stores dynamic information about all the projects that the various users of Pharo Smalltalk are running. In particular, the challenge is to:

-  implement a dynamic analysis to extract the caller/callee relationship with modest overhead (e.g., through sampling)
-  conceive a compact data format that identifies distributed code entities without exposing confidential information (e.g., through hashing)
-  a central service that receives the data, persists it, and provides a querying interface (e.g., through a performant NoSQL DB and a REST API)
-  a small example client that consumes and exposes this information 

#Requirements
This projects will introduce you to different âhotâ topics, like dynamic languages, runtime analysis, and high-performance web services. You don't need to know Smalltalk upfront, but you are willing to invest into becoming a proficient Smalltalk developer.


**Note:** This project is listed also both a bachelor or a masters project. If taken as a masters, you will need to research how to effectively use this data.
