---
Title: Adding a Visitor a Statistical Component
---
#Adding a Visitor a Statistical Component
##Overview
This Howto page describes how to add a new visitor over a document. The creation of a statistic component is depicted step by step. The idea is to have displayed the number of children if we are viewing a folder, or the size of a page if one is visited.

3 new classes and 1 class extension are needed:

- <b>TemplateStatistic</b> represents the statistic component (e.g., a purple box present on the left pane)
- <b>VisitorSize</b> needed to compute the size of a page. So forth, it run over a whole document
- <b>VisitorStatistic</b> used for displaying a statistic regarding a page, a folder, or a resource


- <b>VisitorRendererHtmlLight</b> need to be extented in order to manage the new TemplateStatistic

##Step by step


- Create a Package <b>SmallWiki Example Statistic</b>
- The structure of a wiki page is described by a template therefore we have to define a new template for showing our statictical information. Create a class <b>TemplateStatistic</b> inheriting from <b>Template</b>
- The template is then walked by a visitor whose responsibility is to display the structure. The visitor pattern is applied:
```
TemplateStatistic>>accept: aVisitor
	aVisitor acceptTemplateStatistic: self
```


-  For the visitor renderer to work we have to extend it. Let's extend the visitor renderer in order to make our new component (template) displayable. The component have to manage differently if we have a folder or a page
```
VisitorRendererHtmlLight>>acceptTemplateStatistic: aTemplate 
	| visitor |
	visitor := VisitorStatistic on: stream.
	action structure accept: visitor
```

- Create a class <b>VisitorStatistic</b> inheriting from <b>Visitor</b> with one instance variable named <b>htmlStream</b>
- Create a class method:
```
VisitorStatistic class>>on: anHtmlStream
	^ self new htmlStream: anHtmlStream; yourself
```

- Now we can define the visitor behavior
```
VisitorStatistic>>acceptChapter: structure 
	htmlStream class: 'boxtitle'.
	htmlStream div: \[htmlStream text: 'Folder Statistic'].
	htmlStream class: 'boxcontent'.
	htmlStream div: 
			\[htmlStream italic: \[htmlStream text: structure title , ' has '].
			htmlStream bold: \[htmlStream text: structure size printString].
			htmlStream italic: \[htmlStream text: ' children']].
	htmlStream break
```

This code display a purple box titled 'Folder Statistic' displaying the number of chidren.

- And for a page:
```
VisitorStatistic>>acceptPage: structure 
	htmlStream class: 'boxtitle'.
	htmlStream div: \[htmlStream text: 'Page Statistic'].
	htmlStream class: 'boxcontent'.
	htmlStream div: 
			\[htmlStream italic: \[htmlStream text: 'Size of ', structure title , ' is '].
			htmlStream bold: \[htmlStream text: (self sizeOfDocument: structure document) printString]].
	htmlStream break
```
The compiler should complain about the message <b>sizeOfDocument:</b> because it is implemented nowhere.

- We create this method:
```
VisitorStatistic>>sizeOfDocument: aDocument
VisitorStatistic>>	| visitor |
VisitorStatistic>>	visitor := VisitorSize new.
VisitorStatistic>>	aDocument accept: visitor.
VisitorStatistic>>	^ visitor size
```

- 


- Now,making the class <b>VisitorSize</b> need to be done in order to make our component ready-to-use. This visitor runs over a document and returns the number of characters contained in it. As remainder, a document is described by entities defined in the package <b>SmallWiki Document</b> (i.e., by using a classical textual structure such as paragraph, list, text, ...). Such information can be obtained by running a visitor over the Document structure. Let's create a class <b>VisitorSize</b> inheriting from <b>Visitor</b>. Add an instance variable namd <b>size</b>


- This variable need to be set to zero when a such visitor is created:
```
VisitorSize>>initialize
       super initialize.
	size := 0
```

- Let's create an accessor to this variable:
```
VisitorSize>>size
	^ size
```

- Specialized it when visiting a text:
```
VisitorSize>>acceptText: aText
	size := size + aText text size
```


- Now the new template needs to be incorpored into the template structure, that could be done by redefining the method:
```
VisitorRendererHtmlLight class>>defaultTemplate
			...
			add: (TemplateStructuresReferences new);
			add: (TemplateStatistic new); "<== The new line !!"
			yourself);
			...
```

- Reinitialize the template hierarchy by evaluating in a workspace:
```
server root template: VisitorRendererHtmlLight defaultTemplate.
```

##Summary
In this howto we have learned how to create a new template. As remainder a hierarchy of template is used for describing the visual aspect of the wiki. We want to add a new component (a purple box), so we add a new Template.

In order to be displayed in a web browser, a visitor rendered is run over the whole template structure and on the page or the folder displayed.
This visitor need to be extended (or a new can be redefined using subclassing) in order to display the new component.

Our new component need to know the textual size of a page, we create a new visitor charged to compute the number of character a page contains.

That's all folk!
Enjoy!
