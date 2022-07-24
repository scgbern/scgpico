---
Title: Pharogenesis
---
#Pharogenesis
In the Smalltalk dialects [Squeak](http://squeak.org) and [Pharo](http://pharo-project.org) it is difficult to view changes to source code that occurred accross major releases. This poses a problem for development as well as for code analysis: Developers often need to be able to revert code to a previous version and for code analysis there should ideally be a single source of information. We solve the problem by building a [Git](http://git-scm.com) repository with the complete source code history of Pharo.

The tool we use to create the Git repository is called Pharogenesis. Pharogenesis uses a Smalltalk implementation of Git called GitFS to build a Git repository from the source code.

The source code database we built with Pharogenesis is available on github ([http://github.com/theseion/pharogenesis.git](http://github.com/theseion/pharogenesis.git)).

<iframe src="http://player.vimeo.com/video/21124971?byline=0&amp;portrait=0" width="601" height="376" frameborder="0"></iframe>

#Getting Started

##Load the Code

-  Download a [Pharo 1.1.1](http://gforge.inria.fr/frs/download.php/28015/Pharo-1.1.1-OneClick.zip) one-click image.
-  Evaluate the following script:
```
Gofer new
	url: 'http://www.squeaksource.com/GitFS';
	package: 'ConfigurationOfPharogenesis';
	load.
((Smalltalk at: #ConfigurationOfPharogenesis) project version: #stable)
	load: #OBExtension
```

##Load the Pharogenesis repository
To browse method versions in Pharogenesis you need to clone the prepared repository from github. Run the following commands on the command line:

```
cd <path to image or one-click application>
git clone http://github.com/theseion/pharogenesis.git
cd pharogenesis
git checkout -b origin/pharo
```

#Where to find more information

-  the [GitFS](http://www.squeaksource.com/GitFS.html) project on SqueakSource hosts all the code related to the implementation of Git on Filesystem
-  the [Pharo](http://www.pharo-project.org/home) web page
-  the [Pharo collaboractive book](http://book.pharo-project.org)
-  the [Git](http://git-scm.com/) web page
-  [Git for Squeak](http://www.squeaksource.com/Git.html) by Tony Garnock-Jones on SqueakSource
-  Lukas Renggli's blog posts on Colin Putney's Filesystem library: [post 1](http://www.lukas-renggli.ch/blog/filesystem-1), [post 2](http://www.lukas-renggli.ch/blog/filesystem-2)

#Contact
The [Pharo mailing list](http://lists.gforge.inria.fr/mailman/listinfo/pharo-project) is the place to ask any kind of questions related to Pharogenesis.
