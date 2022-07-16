---
Title: Pangea in Smalltalk
---
#Pangea in Smalltalk
[Pangea](%base_url%/research/pangea) is an interesting tool, very useful when you want to analyse Java open-source software. It provides a set of Moose images with models of the Java systems that comes with [Qualitas Corpus](http://www.qualitascorpus.com). It also provides a script that helps to download the software models, to create the images with the models embedded (one model in each image) and to execute Smalltalk code for extracting information from the models. Since all these features are provided in the shell script, it is a bit difficult to debug when something fails. Besides, the output of the analyses can only be exported as text (in the standard output or redirected in a file). This last thing, is a major drawback.

When doing visualisation with Roassal the cycle working with Pangea is too long. Firstly, we create the script with some metrics. We run the script and obtain a text file with the results. Secondly, we import the file with those results -in a Moose image- to finally start building the visualisation. If we find that we need other information, we need to go back to the shell terminal and start over again.

Consequently, using the same principles of Pangea we developed a Smalltalk version of Pangea. Doing this, we can use the results just after processing them, all inside the image. The idea is that Pangea is installed in a master image, by this:  

```
Gofer new smalltalkhubUser: 'merino'
        project: 'Explora';
        package: 'Explora';
        load.
```

Then we invoke Pangea like this:

```
Pangea command: '
|moose|
moose := MooseModel root first.
Array 
	with: (moose allNamespaces reject:#isStub) size
	with: moose allModelClasses size
	with: (moose allMethods reject:#isStub) size '
```

The command parameter can contain several lines. That code will be evaluated in each image (model). The results are stored in a Dictionary that relates the name of the system with the evaluation of the script.

Moreover, we developed a parallel version which can easily be executed by sending the message commandParallel: instead command:. The preliminar results show that performance of parallel version is 30% better than sequential.

Try the examples (under protocol examples):

- Pangea exampleLongestName
- Pangea exampleLongestNameParallel
- Pangea exampleMetrics
- Pangea exampleModelNames
