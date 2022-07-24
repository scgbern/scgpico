---
Title: Requirements parser, workflow editor, and persistence to git
---
#Requirements parser, workflow editor, and persistence to git
Software requirements are often stored and managed in several separate tools, such as Jira, Trello, modeling tools, etc.
When too many tools are used along with an IDE to implement software, maintenance becomes costly. 
Therefore, we envision creating and managing requirements in an IDE. 
Kindly read the broader vision for this work in [this](/archive/papers/Patk20c.pdf) paper.

For this project, we only want to solve a small issue to accomplish the big vision.
Requirements are stored in several file formats.

**ReqIF** (Requirements Interchange Format) is an XML file format, which companies use to exchange requirements.
Read more about ReqIF [here](https://en.wikipedia.org/wiki/Requirements_Interchange_Format).
Similarly, we have a dummy JSON file that contains requirements for toy software applications.

The goal of this project is to parse the requirements stored in these file formats, create requirements as objects, and when modified&mdash; serialize back to these file formats.
We will also figure out how requirements stored in such formats and created as objects can be saved to git to become part of the software project.

Watch [this video](https://www.youtube.com/watch?v=p4OHK_Nuluk&ab_channel=GlamorousToolkit), which is a cool demonstration of this idea. 

# Tasks

-  Understand the specifics of ReqIFR. 
Subsequently, you will build a ReqIF parser in [Glamorous Toolkit (GT)](https://gtoolkit.com/)  IDE to parse any ReqIF file and a device a similar solution to create requirements as first-class citizens as demonstrated in the video.

**Note**: there already exists [STON format](https://ci.inria.fr/pharo-contribution/job/EnterprisePharoBook/lastSuccessfulBuild/artifact/book-result/STON/STON.html) to serialize objects. We will study whether we can use it to serialize the requirements. 

#Contact 
[Nitish Patkar](%base_url%/staff/NitishPatkar)
