---
Title: MSE Specification
---
#MSE Specification
[MSE](%base_url%/wiki/projects/archive/fame/mse) is a file format to store [FM3](%base_url%/wiki/projects/archive/fame/fm3) compliant metamodels and models. 

NB all MSE files must use UTF-8 encoding.

```
   Root := Document ?
   Document := OPEN ElementNode \* CLOSE
   ElementNode := OPEN NAME Serial ? AttributeNode \* CLOSE
   Serial := OPEN ID INTEGER CLOSE
   AttributeNode := OPEN Name ValueNode \* CLOSE
   ValueNode := Primitive | Reference | ElementNode
   Primitive := STRING | NUMBER | Boolean | Unlimited
   Boolean := TRUE | FALSE
   Unlimited := NIL
   Reference := IntegerReference | NameReference
   IntegerReference := OPEN REF INTEGER CLOSE
   NameReference := OPEN REF NAME CLOSE
```

```
   OPEN := "("
   CLOSE := ")"
   ID := "id:"
   REF := "ref:"
   TRUE := "true"
   FALSE := "false"
   NAME := letter ( letter | digit ) \* ( "." letter ( letter | digit ) ) \*
   INTEGER := digit +
   NUMBER := "-" ? digit + ( "." digit + ) ? ( ( "e" | "E" ) ( "-" | "+" ) ? digit + ) ?
   STRING := ( "'" \[^'] \* "'" ) +
```

```
   digit := \[0-9] 
   letter := \[a-zA-Z_]
```

Whitespace are the usual suspects, and comments are

```
 comment := "\"" \[^"] \* "\""
```

## On the nodes and commands

An MSE implementation MUST support all nodes and commands below


- **Element node**
- defines an element in the model. An element node contains: 1) the name of its type, 2) an optional ID command and 3) any number of attribute nodes.
- **Attribute node**
- defines an attribute of an element in the model. An attribute node contains: 1) the name of the attribute, 2) any number of value nodes. An attribute node belongs to the element of its enclosing element node.
- **value node**
- defines the value of an attribute of an element in the model. An value node is either a primitive value or any of the commands that returns an element or value. A value node belongs to the attribute of its enclosing attribute node.
- **ID command**
- assign an identifier to an element. An ID command contains: 1) the command "id:", 2) an identifier. An ID command node belongs to the element of its enclosing element node. The scope of identifiers is local to the level of the MSE file. They are only used for the purpose of import and export, to refer to elements on the level of the MSE file. They are not known to the model. If you need the notion of identfiers in your model, please add them at the model level yourself.
- **REF command**
- returns the element identified by an identifier. A reference command contains: 1) the command "idref:", 2) an identifier. Reference nodes are valid values nodes.
- **REF command** metamodels only
- returns the element identified by its unique name. A reference command contains: 1) the command "ref:", 2) a name. Reference nodes are valid values nodes. The names Object, String, Boolean, Number, Date are reserved for FM3's built-in types.


---

##Change list

Edit of February 24, 2009

-  Fixed format of floating point numbers, now covers all variations of Smalltalk, Java and C/C- [MSE Specification](%base_url%/wiki/projects/archive/fame/msespecification) &mdash; gosh, and I assumed IEEE to be a standard.
-  Removed references to deprecated idref command.

Edit of December 3, 2007

-  Added comment about comments

Edit of November 11, 2007

-  Disallow 0 as unique ID

Edit of October 12, 2007

-  Put \"" around -,.,' and e.
-  Made all non-terminals conform (<>).

Edit of October 11, 2007

-  Changed the definition of <code>number</code> to not allow <code>d</code> as exponent separator.
-  Fixed the definition of <code>string</code>.
-  Fixed the definition of <code>name</code>.
-  Made <code>unlimited</code> optional.
-  Removed the <code>path:</code> command, never used and thus yet another violation of YAGNI.
-  Removed <code>&lt;name></code> from the list of possible primitives, please quote all strings!
