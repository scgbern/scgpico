---
Title: How can I prepare source code listings?
---
#How can I prepare source code listings?
- **Q How can I prepare source code listings?**
- **A** \\usepackage{listings}
See also [http://www.ctan.org/tex-archive/macros/latex/contrib/listings/listings.pdf](http://www.ctan.org/tex-archive/macros/latex/contrib/listings/listings.pdf)
```
\usepackage{listings}
\usepackage{bold-extra}
\lstset{
    language=PASCAL,
    basicstyle=\scriptsize,
    columns= fullflexible
}

\begin{lstlisting}
\end{lstlisting)
```
For Smalltalk code, use
[st80.tex](https://www.iam.unibe.ch/scg/svn_repos/scgbib/LatexTemplates/st80.tex).
Demo usage:
[st80demo.tex](https://www.iam.unibe.ch/scg/svn_repos/scgbib/LatexTemplates/st80demo.tex)

