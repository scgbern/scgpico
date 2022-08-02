---
Title: Smart Code Area With Critique Support
---
#Smart Code Area With Critique Support
#Motivation

No one is safe from making mistakes, and writing code is not an exception here. But we as programmers can build tools that analyze your code and immediately inform you about the possible issues.

This is what was done in [Pharo](http://pharo.org) system and ended up with the creation of [QualityAssistant](https://github.com/Uko/QualityAssistant#quality-assistant-).
![https://github.com/Uko/QualityAssistant/raw/master/graphics/readmeImages/nautilusDemo.png](https://github.com/Uko/QualityAssistant/raw/master/graphics/readmeImages/nautilusDemo.png)
A list of code critiques below the editor instantly informs a developer about the issues in the code that they are working on. And 9 out of 10 developers are positive about this change. Moreover, as the tool is integrated in Pharo hundreds of developers are using it.

#Problem

The main code editor is not the only place where developers read and edit code. Pharo gives developers an amazing flexibility in how and where you edit your code. As the result some developers do most of their programming in the debugger. But there is no information about the critiques is missing from the other tools.

#Goal

Yes, it's not hard to add the analysis plugins to the other tool, but this requires a lot of work. However all the tools use the code pane widget that can be augmented with the critique information.

The goal of this project is to create a smart code are that will work on class- and method-objects (instead of plain text) and provide the critique information out of the box. Then this widget will be adopted by all the tools that want to have smart annotations.

# Bonus Motivation

The project is concise and well-defined.
You will get an experience in designing Object-Oriented components.
Your work will be used be real devs. I.e.: you can put in your CV something like: "I've developed a code-edditing widget for the system used by 30 commercial commercial companies and 20 universities."



Contact: [Yuriy Tymchuk](%base_url%/staff/YuriyTymchuk)
