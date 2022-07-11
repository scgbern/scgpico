---
Title: How to detect transparency in figures
---

- **Q Lulu complains that it cannot rip my PDF &mdash; some elements contain transparency. How do I tell which they are?**
Add the following incantation:
```\pdfminorversion=3 % Set PDF to 1.3 for Lulu
```
Figures with transparency will show up with a bright green background. (Or whatever the transparency colour is defined to be?)
