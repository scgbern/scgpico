---
Title: How do I turn off the ugly boxes around hyperref links?
---

- **Q How do I turn off the ugly boxes around hyperref links?**
- **A** Explicitly set the colors. You can use black too:
```\usepackage[pdftex,
	colorlinks=true,
	pdfstartview=FitV,
	linkcolor=black,
	citecolor=black,
	urlcolor=black]{hyperref}
```
