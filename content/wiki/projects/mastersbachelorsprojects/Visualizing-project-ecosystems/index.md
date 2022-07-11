---
Title: Visualization for Software Domain Extraction
---

#Motivation
Software projects normally are built on top of many libraries that implement cross-project functionalities. Different projects would depend on different sets of libraries. Although  there should be common libraries that crosscut many projects, projects in the same domain should share a specific set of them (e.g., game projects should normally depend on common game libraries). The analysis of those dependencies could lead to unveil the domain to which a project belongs. Visualization can provide a concrete representation to projects, libraries and their dependencies, encouraging exploration and detection of patterns.


|![Exploration](%assets_url%/files/14/vs3evqwc21d0k4saei2c39w2xuggcz/exploration.png)
|---
 
#Approach
In this project we will work preparing a dataset, modelling it, defining a similarity function, and exploring visualization techniques to infer the domain for open source projects. We will develop prototypes using Pharo (a Smalltalk inspired language) and Roassal (a visualization engine).

#Research Questions

- How visualization can help to infer project domain?

#Further reading


- Pharo: [http://www.pharobyexample.org](http://www.pharobyexample.org)
- Roassal: [http://agilevisualization.com](http://agilevisualization.com)


Contact
[Leonel Merino](%base_url%/staff/merino) [Boris Spasojević](%base_url%/staff/Boris-Spasojevic)
