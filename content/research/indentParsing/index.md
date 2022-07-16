---
Title: Indentation Parsing in PetitParser
---
#Indentation Parsing in PetitParser
The [PetitParser](http://smalltalkhub.com/#!/~Moose/PetitParser) supports for indentation grammar definitions for languages such as Haskel, F#, Python, YAML, MarkDown and many others.

#Nested Lists Example
Let us define a PPListsParser that can parse documents such as this one:

```
 Cool Cake Recipe:
 - Add flour and baking powder into the bowl
 - Mix ingredients:
   - Butter
   - Suggar
   - Eggs
 - Put into the owen
```

The document is list of paragraphs and another lists. 
Of course, lists can be nested into each other.

The result of the example above has two elements: i) paragraph: *Cool Cake Recipe:* and ii) list with 3 instructions.
Furthermore, the second instruction contains one paragraph *'Mix ingredients:*' and one nested list with three ingredients: *Butter*, *Suggar* and *Eggs*.

As we see, there are two basic elements in our documents, list and paragraph.
Therefore, we define contentElement as this:

```
 contentElement
	^ (list / paragraph)
```

For simplicity, paragraph is a single line:
```
 paragraph
	^ #newline asParser negate star, #newline asParser
```

List is a bit more complex, since it is recursive.
List is a sequence of items, which may contain another lists.
Let us focus on item definition first.
Item has to start with **'-'**.
The item content is any valid document if aligned properly.
Last but not least, item should end, when content no longer aligns.

Therefore, we define item as the sequence:
```
 item
	^ itemStarts, content, itemEnds 
 itemStarts
	^ bullet, blanks, #setIl asParser
 itemEnds
	^ #restoreIl asParser

 blanks
	^ #blank asParser star
```



In itemStarts we define the new *indentation level*.
The *indentation level* defines a column where the item content starts.
In itemEnds we restore the previous *indentation level*.

Now the question is, how to force content to align its contentElements (i.e paragraphs and another lists) to the *indentation level*.
Simply by using trimAlign message. 
The trimAlign expression consumes whitespace before an expression up until the column as set by #setIl asParser is reached.
Note, that trimAlign does not consume any whitespace after an expression.

```
 content
	^ contentElement, 
	 (contentElement trimAlign) star
```


Once we have a listItem and content properly defined, we can close the circle or list recursive definition and define the list:
```
 list
	^ item,
	 (item trimAlign) star
```

Try this out, download the [PetitParser](http://smalltalkhub.com/#!/~Moose/PetitParser) and see the class PPListsParser for the whole grammar. 
If you are interested, there are many more grammars, such as Python or MarkDown!

#Internals

The indentation in PetitParser is implemented using the *indentation stack*.
The *indentation stack* is a stack of parsing expressions.
The expressions on the indentation stack can be added, removed and evaluated at will.

Fore example, #setIl asParser pushes special parsing expression that compares current column with the specified column.
The #restoreIl asParser expression pops from the stack.
The trimAlign consumes the whitespace until the expression on top of the *indentation stack* is evaluated to true.
