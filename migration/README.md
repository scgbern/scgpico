# Description

This folder contains various resources used to migrate the SCG Pier installation to Pico, a lightweight markdown-based CMS.

NOTES -- old notes
TODO-LOG -- tasks to do and done, and a brief FAQ

---
# Scripts

The saved classes and methods are in the FileOuts folder. To file them into the Squeak image, navigate with the file browser and “install” them (file in). To file them out after changing them, run `PM new fileOutScripts`

The key class is PM.st. It is a class containing a bunch of scripts, as methods, to export the Pier contents. It makes use of PMMarkdownWriter, the visitor to generate markdown from the Pier pages.

The exported web site is in the content folder. This can be synched to the content folder of a Pico installation (or linked to a checked-out clone).

---
# Overview

PMMarkdownWriter is a visitor that generates markdown for Pier pages and content.

The first version of the class was created by cloning PRWikiWriter, that is, by compiling each of its methods to the new class. We needed a sibling rather than a subclass because the visit* methods invoke the super methods inherited from PRVisitor. The visit* methods have been incrementally updated to generate proper markdown.

NB: to keep the implementation is compact as possible, no new methods or class extensions are being added to other classes of the core Pier system. This leads to some ugly type-testing code.

---

