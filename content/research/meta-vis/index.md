---
Title: MetaVis: Exploring Actionable Visualization
---
#MetaVis: Exploring Actionable Visualization
Software visualization can be very useful for answering complex questions that arise in the software development process.
Although modern visualization engines offer expressive APIs for building such visualizations, developers often have difficulties to (1) identify a suitable visualization technique to answer their particular development question, and to (2) implement that visualization using the existing APIs.
Examples that illustrate the usage of an engine to build concrete visualizations offer a good starting point, but developers may have to traverse long lists of categories and analyze examples one-by-one to find a suitable one. 

We propose *MetaVis*, a tool that fills the gap between existing visualization techniques and their practical applications during software development.
We classify questions frequently formulated by software developers and for each, based on our expertise, identify suitable visualizations.
MetaVis uses tags mined from these questions to offer a tag-iconic cloud-based visualization.
Each tag links to suitable visualizations that developers can explore, modify and try out. 
We present initial results of an implementation of MetaVis in the Pharo programming environment. The tool visualizes 76 developers' questions assigned to 49 visualization examples. 

A limited version of the tag-iconic cloud-based visualization is shown below. For a fully interactive version please refer to the installation instructions.

<iframe height=800 width=800 title="MetaVis" src="/download/merino/MetaVis/metavis.html"></iframe>

#How to install

- Download [Pharo 4 VM](http://files.pharo.org/get-files/40/) for your OS.
- Download the [image](%assets_url%/files/2d/4weyo12zu9jivt5n1sfgsxxt26ayrl/pharo.zip) that contains MetaVis.
- Download the [data set](%base_url%/download/merino/MetaVis/questions.csv).
- Copy the CSV file in the same folder of the image. 
- Open the image using the Pharo VM.

[Leonel Merino](%base_url%/staff/merino), [Mohammad Ghafari](%base_url%/staff/Mohammad-Ghafari), [Oscar Nierstrasz](%base_url%/staff/oscar), [Alexandre Bergel](http://www.pleiad.cl/people/abergel) and [Juraj Kubelka](http://www.pleiad.cl/people)
