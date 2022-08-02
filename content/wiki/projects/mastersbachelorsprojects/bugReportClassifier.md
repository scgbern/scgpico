---
Title: Bug Report Classifier
---
#Bug Report Classifier
#Project Idea:

A recent statistical study on 7000\+ bug reports, in open source issue trackers, showed that 33.8% of those reports are misclassified. In other words, instead of referring to code fixes, they refer  to feature requests, update in the documentation, or internal refactoring. This misclassification introduces a considerable bias in all previous bug prediction approaches.

The researchers went through the aforementioned bug reports, manually classified them, and published the dataset they produced so other researchers can benefit from.

The idea here is to develop a bug report classifier based on some artificial intelligence model. That model can be trained using the available report classification dataset.

#Implementation Roadmap:

First task, we should acquire the bug reports from the corresponding issue trackers. The dataset we have only has the bug reports ID that we will use to go to the bug report webpage, parse it, and put its elements in a database.

Second, we should build the AI model and train it with the dataset we have.

Third, we should test our tool with other bug reports and see how much we score.

The aim here is a good precision and a very high recall.

#Contact: 
[Haidar Osman](%base_url%/staff/Osman)
