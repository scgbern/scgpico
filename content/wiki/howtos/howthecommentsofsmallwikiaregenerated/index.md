---
Title: How the Comments of Smallwiki are Generated
---

##Overview
This page describe the creation of a new action used for displaying all the comments of Smallwiki.

It simply create a new action named 'comments' for pages.

##Step by Step
You can use the result of this howto when you are working on smallwiki. It creates a new action named <b>comment</b> displaying all the class comment and methods comment of SmallWiki. Of course it is dynamically generated :-)


- Create a new package <b>SmallWiki Example Comments</b>. This package will contain everything needed for our application.
- Create a class named <b>ViewCommentAction</b> inheriting from <b>Action</b>
- First, we have to give a title to this action:
```ViewCommentAction>>title
	^ 'Comments'
```

- We have to define what will be displayed when the use press of Comments:
```ViewCommentAction>>renderContent
	| s |
	s := SortedCollection sortBlock: \[:cls1 :cls2| cls1 name <= cls2 name].
	s addAll: self class environment classes.
	s  do: \[:cls|
		html horizontalRule.
		self displayOn: html classCommentFor: cls].
```
A little bit of explanation about the code just shown. The method <b>VewCommentAction>>renderContent</b> is charged to generate some html code. It is done by writing on the stream named <b>html</b>.
Because we would like to have the class named-sorted, we create an empty sorted collection. The sorting-rule need to be redefined in order to classify classes.
The we add in this collection all the classes belonging to the namespace SmallWiki (the namespace SmallWiki is the result of the expression <b>self class environment</b>).
For each classe (now sorted according their name) an horizontal line is display (performed by <b>html horizontalRule</b>, 

- and we display the class and methods comment throught the method <b>ViewCommentAction>>displayOn:classCommentFor:</b>:
```ViewCommentAction>>displayOn: anHtmlStream classCommentFor: aClass
	anHtmlStream bold: \[anHtmlStream text: aClass name]; break.
	anHtmlStream text: aClass comment.
	anHtmlStream break.
	aClass methodDictionary keys do: \[:key|
		self displayOn: anHtmlStream methodCommentNamed: key forClass: aClass]
```

- and finally:
```ViewCommentAction>>displayOn: anHtmlStream methodCommentNamed: selector forClass: aClass
		| cm source parser methodComment |
		cm := aClass methodDictionary at: selector.
		source := cm getSource, Character cr printString.
		source isEmpty not ifTrue: \[
			(parser := aClass parserClass new).
			methodComment := parser parseMethodComment: source setPattern: \[:none | none].
			methodComment isEmpty not ifTrue: \[
				anHtmlStream paragraph: \[
					anHtmlStream bold: \[anHtmlStream text: selector printString].
					anHtmlStream break.
					anHtmlStream italic: \[anHtmlStream text: methodComment first].
					anHtmlStream break.]]]
```
<i>NB: to add <b>Character cr</b> at the end of the method source code is necessary because of some bug in VisualWorks</i>


- Now the Action is created, we just need to bind it to a page, just add a line in:
```TemplateActionsCustom>>defaultActions
		...
		add: ViewCommentAction;
		...
```

- Now the action is available, we have to bind it to a page:
```Page>>initializeActions
	"self initializeActions"
	super initializeActions.
	self registerAction: PageView.
	self registerAction: PageEdit.
	self registerAction: PageHistory.
	self registerAction: ViewCommentAction. "<== The new line!"
```
Just do an <b>Page initializeActions</b> in a workspace and press refresh on your web browser

Enjoy!
