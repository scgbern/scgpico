---
Title: Getting started
---
#Getting started
After loading ChangeBoxes (see [Installation](%base_url%/research/changeboxes/installation)), you may want to try out the following small tutorial.


-  First, you want to create a new WorkSession, where all your changes will be put. For that purpose, open the WorkSession Browser from your world menu. You should see a window with two columns in the top and one big pane in the bottom, all empty. In the upper left pane, right-click and choose 'create worksession'. In the dialog, enter a name for your WorkSession and change the color if you like, then click on 'accept'.


-  There should now be an entry with the name of your created WorkSession. On the context menu you will find the option browse, which will open a new image browser that is aware of this WorkSession.


-  There we go! All the modifications you perform in this browser will now be local to your WorkSession. The rest of the system will not be aware of your changes at all. So let's start with some coding. Create a new category, e.g. CBXGettingStarted, and create a new class called Sorter therein. We will code a small lisp-style sorting algorithm. Let's add the following method to the class Sorter:
```
       sort: aCollection
          ^aCollection isEmpty
              ifTrue: \[aCollection species new]
              ifFalse: \[
                 (self sort: (aCollection allButFirst select: \[:each | each < aCollection first])) ,
                 (aCollection species with: aCollection first) ,
                 (self sort: (aCollection allButFirst select: \[:each | each >= aCollection first])) ]
```


-  Of course, we need to test that algorithm. So let's create a class SorterTest that extends TestCase and put the method testSort in there (still in the browser for our WorkSession):
```
      testSort
         self assert: (Sorter new sort: #(2 4 3 6)) = #(2 3 4 6).
         self assert: (Sorter new sort: #(2 3 4 3 2)) = #(2 2 3 3 4).
         self assert: (Sorter new sort: #(1)) = #(1).
```


-  If you open a normal omni browser from the open menu, you will recognize that neither the class Sorter nor the class SorterTest are existing there. Your changes are only visible in the browser with the assigned WorkSession. (Caveat: This is only true for OBSystemBrowser. The old browser will still display both of the classes, as it is not aware of ChangeBoxes). So let's see what we did so far. For that purpose, go back to the WorkSession browser. You should now see a list on the right with all the changes you performed so far.


-  To run your test, go to the top ChangeBox in the WorkSession browser and select 'open test runner' from the context menu. This will open a TestRunner that is also aware of the selected ChangeBox. As this ChangeBox is related to all ChangeBoxes before, the TestRunner is then also aware of all these changes. Maybe you need to refresh the categories list in TestRunner in order to see your category with SorterTest. Select only this class, run the test and enjoy the green light if everything went right.


-  Our code for the sorting algorithm is not that beautifull yet. The two calls for sorting the rest of the list could be put in an own method:
```
       sort: aCollection relation: aSelector
          ^self sort: (aCollection allButFirst select: \[:each |
             each perform: aSelector withArguments: aCollection first])
```


-  So the sort: method can be changed to the following:
```
       sort: aCollection
         ^aCollection isEmpty
           ifTrue: \[aCollection species new]
             ifFalse: \[
                 (self sort: aCollection relation: #<) ,
                 (aCollection species with: aCollection first) ,
                 (self sort: aCollection relation: #>=) ]
```


-  Let's test! Switch to the TestRunner and run again. Still green! But wait a minute... What did we actually test? Not our new changes, no, but the version we had before. The TestRunner is still executing it's tests in the previous scope, nobody told it to go to the new scope. This also shows that the code before the refactoring is still completly runnable, no matter what we changed. So before running the tests on the new version, update the TestRunner by opening it from the last change in your WorkSession browser. For more convenience, you could also open the TestRunner on the WorkSession, so the tests will always run on the latest version. What's the result of running the tests now? Red! By clicking on the failed test, you get a debugger saying the Instances of SmallInteger are not indexable. What happend? A small research shows that we used the first element of our collection as a parameter for perform:withArguments:, instead of an Array containing that element. The fix is (change in your WorkSession aware browser):
```
       sort: aCollection relation: aSelector
          ^self sort: (aCollection allButFirst select: \[:each |
             each perform: aSelector withArguments: (Array with: aCollection first)])
```

-  If you now update your TestRunner again and run the test, everything should be green again. Congratulations!


-  Let's do something sweet at the end: Get an inspector for your WorkSession from the context menu in the WorkSession browser. Then inspect the result of the following code in the inspector window:
```
      | cursor breakingChange |
      breakingChange := nil.
      cursor := self changebox.
      \[ breakingChange isNil ] whileTrue: \[
         CBXCurrentChangeBox use: cursor during: \[
            \[(Smalltalk at: #SorterTest) new testSort]
            on: Error
            do: \[ breakingChange := cursor ] ].
         cursor := cursor ancestor ].
      breakingChange inspect.
```


-  What you get is the last change that broke the test, a change of Sorter>>sort. By printing self definition of the change, you see that it is the refactored sort method that uses the new sort:relation: method that broke it. Of course, here we didn't change anything else, but imagine a big system, with a lot of parallel changes.

I hope these few steps woke your interest in ChangeBoxes. Another approach to take is to create a few more WorkSessions and play around a little bit. CBXMethodChangeTest and CBXClassChangeTest are also good entry points if you prefer some naked code.

Please be aware that ChangeBoxes are still in development and not everything might work. I'm glad about any bug notifications! 
