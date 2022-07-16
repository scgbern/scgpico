---
Title: Pier Metaphor
---
#Pier Metaphor
The object model of Pier is very similar to a Unix file-system, however there is no distinction between *folders* and *files*. Both concepts are unified in a so called *structure*. There are different types of structures. By default a new structure is a *page*, this is a structure that contains a wiki document. There is also the type *file* that can carry binary data, such as images or PDFs. Another type is a *component*, this is a Seaside component and used to add interactivity and special behavior to a page.

When logged in at the bottom of the page the admin tools appear, the 4 columns provide the following functionality:


-  The navigation tree displays a site-map.
-  The commands that work on the current structure.
	-  *Add* adds a new structure below the current one.
	-  *Edit* edits the current structure.
	-  *Copy* copies the current structure and all substructures to a new place.
	-  *Move* moves or renames the current structure.
	-  *Change ...* changes the permissions of the current structure.
	-  *Remove* is like rm -rf, efficient and deadly.

-  Views are the different views onto the current page.
	-  *Changes* displays the edit operations of the current page and all its children. *Changes (RSS)* is the same as an RSS feed.
	-  *Log* displays all recent operations of the current page and all its children. *Log (RSS)* is the same as an RSS feed.
	-  *Wiki* and *Text* are plain text representations of the current page, useful for scripting.
	-  *Halos* is the new object-oriented view onto Pier, it visualizes the composition of the page and gives access to the various parts.

-  References are all the other structures that refer to the current structure.
