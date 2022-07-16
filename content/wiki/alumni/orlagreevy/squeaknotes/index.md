---
Title: Squeak Notes
---
#Squeak Notes
#
##Changing the mouse buttons
 - On the world menu choose "Preferences and Services"
 - Search for "buttons" in the search pane
 - select "Swap mouse buttons" - that's it (you dont need to press save)

##Get all the packages in squeak

packages := (PackageInfo allPackages collect: [:each | each packageName ]) asSortedCollection.

##Get all the classes of a package in squeak

Smalltalk organisation listACategoryNamed: aCategoryName

#Create a new category
