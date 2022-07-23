---
Title: Towards a better IDE
---
#Towards a better IDE
<b>Problems of current Smalltalk IDEs:</b>
SD- let us try not to be tied with Smalltalk
SD- I do not see the difference between A and C
SD- I would add text is poor we cannot ask text more than copy and paste

A) Frequent switches of context (e.g., browsing different packages or classes, changing windows)
B) Difficult to find relevant classes or methods for problem at hand
C) Lost of focus and overview due to many opened windows and scattered functionality among several classes in OOP SD (this si called yoyo effect read Wild92a, Taen89a and Duns00a).
D) Difficult to go back to code previously browsed
E) No or few support of the IDE during the writing of source code lessens the efficiency of a programer.
F) Chances are high that changing a feature of a software may break other parts of it, because there's no support of the IDE to detect possible breaks.
G) It is hard to customize, extend or adapt an IDE to specific needs, hence it is not possible to solve specific tasks in an IDE for which it doesn't provide built-in support.
H) An IDE is often poorly integrated into the look and feel of the surrounding OS, thus it often does not fit the expectations of the user. Better integration into the OS might lower the learning curve and higher the convenience to use an IDE as well as it eases the implementation of user interfaces in the IDE if the possible widgets are already defined by the OS.
H)- we see only one method (even in java they ave longer method) at a time
I) we only see source code not other information

<b>Hypotheses:</b>

<i>Entity level</i>

i) Smart groups help to focus on important classes and methods and hence minimize the need to browse and search a large space. (Problem A, B, C)
ii) Providing access to the history of browsed methods and enabling the developer to set bookmarks helps to identify and relocate important entities and hence eases program comprehension and understanding. (Problem D, B)
iii) Tabbed browsing, multiple selection of packages, classes or methods, and dynamic protocols increase the overview of a software and minimizes the time to find and identify important pieces of functionality in packages, classes or methods. (Problem B, C)

<i>Feature level</i>

iv) Feature-driven browsing helps to bugfix, change or enhance existing features of a software. (Problem B)
v) Presenting relationships and dependencies between different features helps the programer to make sure that changes done for one feature do not influence or even break other features. (Problem F)
vi) The possibility to select multiple entities at a time, e.g., multiple packages, classes, methods, speed up the development process, enhance the overview and forces the programmer less frequent to switch context and to retrieve and search important entities. (Problem A, B, C)
vii) Making the relationships between opened browsers and the history of the opening of browsers explicit and accessible, helps to not loose the overview and context and eases the retrieving of information. (Problem A, C)

<i>Source code level</i>

viii) Syntax highlighting, code completion, code hints and lint integration help the programer do write source code faster and with less errors. (Problem E)

<br><br>
<b>Matrix of problems and hypotheses for solutions:</b>

<table border="1">
 <tr>
  <td>problems  hypotheses</td>
  <td> i) </td>
  <td> ii) </td>
  <td> iii) </td>
  <td> iv) </td>
  <td> v) </td>
  <td> vi) </td>
  <td> vii) </td>
  <td> viii) </td>
 </tr>
 <tr>
  <td>Context switch (A)</td>
  <td> X </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> X </td>
  <td> X </td>
  <td> </td>
 </tr>
 <tr>
  <td>Find information (B)</td>
  <td> X </td>
  <td> X </td>
  <td> X </td>
  <td> X </td>
  <td> </td>
  <td> X </td>
  <td> </td>
  <td> </td>
 </tr>
 <tr>
  <td>Lost overview (C)</td>
  <td> X </td>
  <td> </td>
  <td> X </td>
  <td> </td>
  <td> </td>
  <td> X </td>
  <td> X </td>
  <td> </td>
 </tr>
 <tr>
  <td>Lack of history (D)</td>
  <td> </td>
  <td> X </td>
  <td>  </td>
  <td>  </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
 </tr>
 <tr>
  <td>Source code writing (E)</td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> X </td>
 </tr>
 <tr>
  <td>Breaking software (F)</td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> X </td>
  <td> </td>
  <td> </td>
  <td> </td>
 </tr>
 <tr>
  <td>Customization (G)</td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
 </tr>
 <tr>
  <td>Integration in OS (H)</td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
  <td> </td>
 </tr>
</table>

<br><br>
<b>Matrix with level and type of problems:</b>

<table border="1">
 <tr>
  <td>levels  issues</td>
  <td> Navigation </td>
  <td> Context switch </td>
  <td> Searching, retrieving information </td>
  <td> Source code writing </td>
  <td> Relations between entities </td>
  <td> Extending, customization of IDE </td>
 </tr>
 <tr>
  <td>source code </td>
  <td> How to browse and display source code: as text, as tree, fish-eye view, etc. </td>
  <td>  </td>
  <td>Search in source code: whole image, scoped. Fast search, accurate</td>
  <td>Help of IDE during writing of source code (code completion, highlighting, code hints, annotate possible problems/bugs, ...)</td>
  <td>  </td>
  <td>Customize how source code is displayed (eg. syntax highlighting, etc.)</td>
 </tr>
 <tr>
  <td>entity </td>
  <td> Navigating classes and methods  </td>
  <td> Switching between packages and classes </td>
  <td> Searching for entities (classes, methods)  </td>
  <td>  </td>
  <td> how classes are related, dependent </td>
  <td></td>
 </tr>
 <tr>
  <td>feature </td>
  <td>Navigate features, parts of features (eg. classes, methods)</td>
  <td>Switching between features, one feature = one context: allow to work with one features w/o switching context</td>
  <td>Searching for features, searching in a single feature, in dependencies to other features</td>
  <td></td>
  <td>Feature dependencies, relations</td>
  <td> </td>
 <tr>
  <td>browser/window</td>
  <td>Navigation between browsers, interaction between different browsers</td>
  <td>How to switch between browsers, how to relate different windows/browsers</td>
  <td>Identify browsed entities, find path in many opened browsers, how to access history and evolution of the current opened browsers</td>
  <td>how to write source code in a browser, where, in which browsers/panes</td>
  <td>How windows are related to each other (which opened which other)</td>
  <td>How windows should be adaptable, extensible (colors, arrangement of widgets, panels, ...)</td>
 </tr>
</table>

<b>Ideas:</b>

Navigating, browsing entities, source code


-  Browse system like in a web browser, with links between entities
-  Display what other people browsed before/after the current selected method
-  Related entities (eg. classes, methods) as in wikipedia
-  Extend protocol browser with an upper bound (eg. up to which class) in OB : ? sd DNU

Relations, dependencies between entities (classes, methods, but also features, concerns) in a software


-  Feature-based view: Browse classes and methods that make up a feature
-  Present aggregation and delegation relationships of classes
-  Present all references to a class in an extra pane in the class browser
-  Neighborhood of software, how things are related, distance between entities

Dealing with many windows and contexts


-  Smart groups
-  Tabbed browsing
-  History: back & forward buttons
-  Bookmarks
-  Function to collapse all windows - SD this is already in squeak so ... 
-  Map how browsers are related, e.g. how and when they are opened (tree of browsers?)
-  Overview of windows (as in IE7), history of opened windows, see workflow (how you opened these windows)
-  Better metaphor to manipulate different contexts needed!
- SD what is a context? 
- SD mulitple code visible at the same time
-  why having a browser with only the class and its collaborator would not be interesting

Assistance of IDE during developing


-  Refactorings
-  Code templates for design patterns : SD argh NOT that!!!!!!!
-  Recognize what developer is doing and suggest how to proceed - Read the book programming by example in our library there was a system called APE developed in Smalltalk [http://portal.acm.org/citation.cfm?id=325854&coll=portal&dl=ACM](http://portal.acm.org/citation.cfm?id=325854&coll=portal&dl=ACM)
-  IDE as an assistant, pair programmer
-  Suggestions on what to work next

Integration of tools, meta information, history


-  Ease access to meta information such as author of entities, time of modification, history, ...
-  Integreation of history of current system, project, package
-  Integration of source repository system (eg. Monticello) in browser
-  Integration of test runner in browser
-  Integrate test coverage information directly into browser
-  Integration of test server
-  Integration of bug tracking system.
-  Display test coverage

Source code writing, viewing and editing


-  Show & edit several methods in one pane, select multiple methods, classes, etc. at a time
-  Auto complete whole expressions
-  Multiple selection of entities, multiple edit panes
-  lint integration
-  Code completion
-  Auto complete whole expressions
-  Code hints
-  Go away from textual representation of source code to tree representation (AST)

Searching, identify, retrieving of important information


-  Dynamic Protocols
-  Global search and replace should be faster
-  Google search for the image, image as a webserver and let google do the indexing
-  Scoping of search for implementors, senders, etc. to a single package
-  Add pictures to classes, packages, methods.
-  Tag or categorize things and associate icons with items
-  Look should transform meaning: ugly things should look ugly! Denote code smells, possible bugs, etc. visually

Customization, adaptation of IDE


-  IDE better customizable, ease to change and adapt IDE to specific needs of a developer

Interaction between developers, collaborative means


-  Discussion page for each method
-  Add interactive elements, eg. to chat with developers (Skype), "chat room development"
-  Integration of RSS

Measurements, Experiments, Validation


-  Measurements, recording in general (how many browsers, etc.)
-  Measure if more windows are more productive
-  Do the usage of different colors (eg. for type of browsers) really make users more productive?

Miscellaneous


-  Assistant to find names for entities (classes, inst vars, etc.) - SD: it would be nice to have a system that depending or not on the package help us to find names based on the names already used in the program. This should be really easy to do. 
-  Everything usable by keyboard only
-  Class extensions as in VW (functionality as well as presentation)
-  Drag and drop objects between inspectors (as in Portia)

SD feedback:

-  I think that there is a strong hypothesis in what you plan to do compare to michele's thesis. You try to stay within the working environement of programmers (text files or editor) because for example to understand class, class blueprints are cool, now do we want them in your thesis, I do not know. So I suggest yu to think about the constraints that you want to put on your work. 
-  I think that you should disntguish when we are programming our own class and when we have to fix other or existing code.

<br><br><br><br><br>
<b>Resources</b>

-  Next interface http://docs-pdf.sun.com/802-2109/802-2109.pdf
-  [http://www.betterdesktop.org/welcome/](http://www.betterdesktop.org/welcome/)
-  [http://www.betterdesktop.org/welcome/index.php?q=data&PHPSESSID=3a4644f008f895770783050c6ec28b17](http://www.betterdesktop.org/welcome/index.php?q=data&PHPSESSID=3a4644f008f895770783050c6ec28b17)
-  Apple HIG: http://developer.apple.com/documentation/UserExperience/Conceptual/OSXHIGuidelines/index.html
