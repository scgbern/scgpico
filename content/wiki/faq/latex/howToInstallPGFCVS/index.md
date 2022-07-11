---
Title: How to install the latest version of PGF/TikZ?
---

- **Q How to install the latest version of PGF/TikZ?**
- **A** Make sure that you have the latest [TeXLive](http://www.tug.org/mactex/2009/) installation and that all packages are up to date. Locate the URL of the latest PGF build at [http://www.texample.net/tikz/builds/](http://www.texample.net/tikz/builds/). Then execute the following commands in a root shell:

``` mkdir /usr/local/texlive/2009/texmf/tex/generic/pgf-2.00-cvs
 cd /usr/local/texlive/2009/texmf/tex/generic/pgf-2.00-cvs
 curl --proxy proxy.unibe.ch:80 $URL -o pgf.zip
 unzip pgf.zip
 rm pgf.zip
 mktexlsr
```
