---
Title: Bibtex Crawler
---

There are usually a set of references in scientific articles that are used inside the paper to cite previous research and results. This is handled usually using BibTex bibliography files. These files are composed of entries such as:

```@inproceedings{Barb12a,
  title={Heuristic strategies for recommendation of exception handling code},
  author={Barbosa, Eiji Adachi and Garcia, Alessandro and Mezini, Mira},
  booktitle={Software Engineering (SBES), 2012 26th Brazilian Symposium on},
  pages={171-180},
  year={2012},
  organization={IEEE}
}
```

Your goal is to develop a tool that takes a BibTex file as an input, parses it, extracts article titles, and crawls the web to download the article PDFs. Working from within the university LAN, the tool can download articles from ACM, IEEEexplore, and Google Scholar.

#Contact
[Haidar Osman](%base_url%/staff/Osman)
