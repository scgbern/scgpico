---
Title: MSE
---

The MSE format allows to specify models for import and export with Fame. Similar to XML, MSE is generic and can specify any kind of data, regardless of the metamodel. 

Quick link &rArr; [FM3](%base_url%/wiki/projects/archive/fame/fm3) | [MSE Grammar](%base_url%/wiki/projects/archive/fame/msespecification)

An example MSE file might look as follows

<div style="background: beige; border: 1px solid peru; font-size: smaller;">

```  (<b>"Sample MSE file"</b>
   (LIB.Library
       (librarian
           (LIB.Person
               (name 'Adrian Kuhn')))
       (books
           (LIB.Book
               (title 'Design Patterns')
               (authors (ref: 1) (ref: 2) (ref: 3) (ref: 4)))
           (LIB.Book
               (title 'Eclipse: Principles, Patterns, and Plug-Ins')
               (authors (ref: 1) (ref: 5)))
           (LIB.Book
               (title 'Smalltalk Best Practice Patterns')
               (authors (ref: 5)))))
   (LIB.Person (id: 1)
       (name 'Erich Gamma'))
   (LIB.Person (id: 2)
       (name 'Richard Helm'))
   (LIB.Person(id: 3)
       (name 'Ralph Johnson'))
   (LIB.Person(id: 4)
       (name 'John Vlissides'))
   (LIB.Person(id: 5)
       (name 'Kent Beck')))
```

</div>

The above MSE file describes a library with a librarian and 3 books by 5 authors. As you can see, it is either possible to nest elements (see the librarian) or the refer to them using the <code>ref:</code> tag. The meta-model (or schema, if you prefer) of the file can be stored in the same format.

<div style="background: beige; border: 1px solid peru; font-size: smaller;">

``` ("Meta-model of above file"
   (FM3.Package
       (name 'LIB')
       (classes
           (FM3.Class
               (name 'Library')
               (attributes
                   (FM3.Property
                       (name 'librarian')
                       (type (ref: 2)))
                   (FM3.Property
                       (name 'books')
                       (multivalued true)
                       (type (ref: 1)))))
           (FM3.Class (id: 1)
               (name 'Book')
               (attributes
                   (FM3.Property
                       (name 'title')
                       (type (ref: String)))
                   (FM3.Property
                       (name 'authors')
                       (multivalued true)
                       (type (ref: 2)))))
           (FM3.Class (id: 2)
               (name 'Person')
               (attributes
                   (FM3.Property
                       (name 'name')
                       (type (ref: String))))))))
```

</div>

To learn more about the "MSE Schema language", please refer to the [FM3 Meta-metamodel](%base_url%/wiki/projects/archive/fame/fm3).
