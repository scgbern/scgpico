---
Title: Helvetia
---

With H<small>ELVETIA</small> we explore a lightweight approach to embed new languages into the host language. The approach reuses the existing toolchain of editor, parser, compiler and debugger by leveraging the abstract syntax tree (AST) of the host environment. Different languages cleanly blend into each other and into existing code.

<div style="width: 100%" id="\__ss_4612058"><iframe src="http://www.slideshare.net/slideshow/embed_code/4612058" width="100%" height="450" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe></div>

#Getting Started

To get started you can either use a ready-made one-click image (suggested), or try to load the code yourself.

##One-Click Image

-  Download the [Helvetia](http://source.lukas-renggli.ch/built/oneclick/Helvetia-OneClick.zip) distribution.
-  Launch the executable of your platform:
	-  Mac: Helvetia.app
	-  Linux: Helvetia.app/Helvetia.sh
	-  Windows: Helvetia.app/Helvetia.exe


##Load the Code

-  Download a [PharoCore 1.1.2](https://gforge.inria.fr/frs/download.php/27526/PharoCore-1.1.2.zip) image.
-  Evaluate the following script:
```Gofer new
   renggli: 'helvetia';
   package: 'Helvetia-Loader';
   load.
```

#Contact

Feel free to ask questions and report bugs on the [Pharo mailing-list](http://lists.gforge.inria.fr/mailman/listinfo/pharo-project).

#License

Helvetia is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).

#Publications
![Fixed Query](%base_url%/scgbib/fixedquery)
