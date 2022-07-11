---
Title: How to make your camera ready PDF pass through the PDF check
---

Once a paper is accepted for publication in proceedings, you have to prepare a camera ready PDF. This PDF must be formatted to IEEE Computer  Society Proceedings Manuscript Formatting Guidelines.

Part of the process is to use a tool named PDF eXpress (http://216.228.1.34/pdfexpress/log.asp) to check or convert your file. Once your PDF is checked, you receive an email saying that it is OK and then you submit this (and not another) PDF as the camera ready. 

This how-to is about tips and tricks to pass through this PDF Check.

```   You can only check your PFD three times automatically, but you will have personalized help if after three times of checking you haven't got the OK.
```

#Problem

```Document contains bookmarks
```
Might be causes by hyperref if you miss bookmarks=false option.

##Solution

Set bookmarks=false, like so
```\usepackage[pdftex,colorlinks=true,pdfstartview=FitV,linkcolor=black,citecolor=black,urlcolor=black,bookmarks=false]{hyperref}
```

#Problem

```Font Helvetica is not embedded (27x on page 4)
```
Might be caused by figures with unembedded fonts.
R for example does not embed font in exported PDFs by default.
You can inspect font in a PDF in Adobe Acrobat by looking at the document properties.

##Solution

1. Be sure that all your fonts are embedded.

2. Check that you use the required laTex formatting macros,  
```   e.g. if they suggest to use latex8 then be sure that your .tex has \usepackage{latex8}. 
   This are described in the IEEE guidelanines that depend on each conference. For instance, for METRICS05 you can find them in
   http://www.computer.org/proceedings/final/metrics2005.htm
```

3. Use the latest version of TeXShop. 
```   Older versions do not embed certain sizes (the commonly used ones, e.g. 14pt) of postcript fonts.
```

4. If the images present in your PDF contain text, e.g. you created myimage.pdf with omnigraffle and this image contains text, is it possible that this fonts are not embedded, causing erros that stop you from having your PDF checked. 
In this case you could either:

```	1. convert the image to .tiff and from tiff to pdf, or
	2. change these fonts, or
	3. embed the fonts with GhostScript:
		#!/bin/bash
		# based on https://stackoverflow.com/questions/2670809/how-to-get-ghostscript-to-use-embedded-fonts-in-pdf
		gs \
		    -dSubsetFonts=true \
		    -dNOPAUSE \
		    -dBATCH \
		    -sDEVICE=pdfwrite \
		    -sOutputFile="${1%.*}-embedded.pdf" \
		    -c ".setpdfwrite <</NeverEmbed [ ]>> setdistillerparams" \
		    -f "$1"
```

5. Consider also sending the source file in PS format to PDF eXpress so that they convert it to PDF and validate it. 

Pages with tips and tricks

```     How to embed the fonts in PDFs: http://pages.cpsc.ucalgary.ca/~smithco/latex/
```

### Another approach
A different (and from the quality point of view better approach than converting to raster graphics) is the following. It should also force the use of Type1 fonts and that fonts are embedded (what for example IEEE rules for proceedings mandate):

1. tex &mdash;> dvi: Create a dvi instead than a pdf directly. To make this work, all graphics have to be provided in EPS format. In OmniGraffle just export as EPS, or use ImageMagick's convert tool to convert any other format to EPS.

``` latex main.tex
```

(Using the latex8 tex template, latex still produces pdf instead of dvi files. The reason is

```\newif
\ifpdf
\ifx\pdfoutput\undefined \pdffalse \else \pdfoutput=1 \pdftrue \fi
\ifpdf \DeclareGraphicsExtensions{.pdf, .jpg, .tif} \else
\DeclareGraphicsExtensions{.eps, .jpg} \fi
```

which, after commenting out, works just fine...)

2. dvi &mdash;> ps
``` dvips -Ppdf -t letter -o main.ps main.dvi
```

3. ps &mdash;> pdf

```ps2pdf -sPAPERSIZE=letter -dCompatibilityLevel=1.3 -dEmbedAllFonts=true \
 -dAutoFilterColorImages=false -dAutoFilterGrayImages=false \
 -dColorImageFilter=/FlateEncode  -dGrayImageFilter=/FlateEncode \ 
 -dMonoImageFilter=/FlateEncode main.ps main.pdf
```

More information about this process and the parameters:

-  http://dsanta.users.ch/resources/type1.html
-  http://pages.cpsc.ucalgary.ca/~smithco/latex/
-  http://electron.mit.edu/~gsteele/pdf/
-  http://www.volkerschatz.com/tex/hiqpdf.html
