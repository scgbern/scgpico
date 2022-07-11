---
Title: User Manual
---

We shortly describe in the following how to use various features of OB-Enhancements that might not be so intuitive.

<i>Smart Groups</i>

In a smart group, you can virtually store any kind of element that is browsable in OmniBrowser: methods, classes, packages, messages, etc. Smart groups are thus useful to categorize your code according to different criterias. You can eg. create smart groups for important features of your software and then add all classes responsible for a certain feature to the corresponding smart group. Of course you can add any element to an arbitrarily number of smart groups.

And so it works:

-  Start the Smart Group Browser using "World -> open -> SmartGroup Browser".
-  Change the view from 'packages' to 'smart groups'.
-  You see two smart groups already there: 'default' and 'searches'. 'searches' is a special group and will be explained later.
-  You can add more smart groups with the command 'new smart group...'
-  When you go back to the 'packages' view, you can select any code element and execute the command 'add to smart group'. Then you can select the group to which you want to add the element.
-  You can also use drag&drop if you already have selected the 'smart groups' view.

The special 'searches' smart group stores searches you submitted in the mercury panel for later retrival. You can always come back to the search results of past searches by clicking on the right node in the 'searches' smart group.

<i>Multiple Selection</i>

The Smart Group browser also provides multiple selection for methods.
When selecting a method while pressing the Shift-key, this methods opens in an additional pane.
As you can see when you have more than one method pane opened, each pane gets three icons on the upper right side: '!', '<->' and 'x'. They are used as follows:


-  '!' - fixes a pane, that is, such a pane won't get overwritten with new content.
-  '<->' - this is a drag&drop button, select it, drag it to the same button of another pane and drop it there. The two panes change their position as a result.
-  'x' - closes a pane

Normally when you click on a method (or any other element, eg. a class) its definition opens in the most right pane that is not fixed. If there is no not fixed pane available, a new panes opens on the right presenting the selected method. 
However, if you press the Shift-key while selecting a method, you will always get a new pane.
Note that you can also close method panes by de-selecting them in the method list (ie. the most right column).
