---
Title: Charting the Pharo ecosystem
---
#Charting the Pharo ecosystem
#Project Idea

<div align="justify">

The Pharo ecosystem has been growing and morphing since its birth from sharing code in Monticello archives on [SqueakSource](http://www.squeaksource.com), via Metacello configurations on Monticello-backed projects on [SmalltalkHub](http://smalltalkhub.com/), to its current home on [GitHub](https://github.com/pharo-project) with the rise of the Iceberg git client.
As building a project on top of existing, specialized libraries circumvents to reinvent the wheel over and over again, projects became more and more interdependent.
The heterogeneous and growing traits of the ecosystem make it non-trivial to search and find suitable libraries if a developer is not already clear about what exactly needs to be sought after.
Despite the current solution of maintaining a central [catalog](http://catalog.pharo.org/) of available libraries, many sources are invisible to a developer on the hunt for an appropriate library.
The goal of this project is to chart the undiscovered seas and islands of Pharo projects in an extensible and self-updating index.
Especially, inter-project dependencies are non-trivial to retrieve from Pharo projects, as dependency declarations are currently not declarative, but rather imperative.
Creating a map of the Pharo ecosystem with reconstructed inter-project dependencies enables the discovery and targeted search of API clients, opening up opportunities for an improved gardening within the ecosystem itself.
A prototype to install and inspect arbitrary projects already exists in [randy](https://github.com/maenu/Randy) with [libraries.io integration](https://github.com/maenu/libraries.io) for SmalltalkHub, yet it is incomplete and needs to be extended.

</div>

#Contact
[Manuel Leuenberger](%base_url%/staff/ManuelLeuenberger)
