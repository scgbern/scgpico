---
Title: Java Annotations
---
#Java Annotations
###By what were Java annotations inspired?
.NET attributes

###So what is acually an annotation?
A special interface type with methods that optionally have default values.

###And what can the return types of these methods be?

-  primitive types
-  String
-  Class and any invocation of Class
-  an enum type
-  an annotation type
-  an array of one of the preceding types

###Are these annotations accessible a runtime?
When you specify an annotation you can decide (with an annotation) whether the compiler discards them, stores them in the class file or makes them accessible at runtime. If you decide to do the later, you can access them via the cumbersome Java Reflection API. So you can access annotations only for stuff that is accessible via this API and no local variables for example.

###What can be annotated?

-  annotation declarations
-  constructors
-  fields
-  local variables
-  methods
-  packages
-  classes, interfaces (including annotation types), or enum declarations

###Who uses annotations in Java?
[TestNG](http://testng.org/doc/) (java rebel unittesting framework)
[JUnit4](http://sourceforge.net/projects/junit)
```
package org.junit;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface Test {
	static class None extends Throwable {
		private static final long serialVersionUID= 1L;		
		private None() {
		}
	}
	
	Class<? extends Throwable> expected() default None.class;
	
	long timeout() default 0L; 
}
```
[apt](http://java.sun.com/j2se/1.5.0/docs/guide/apt/) superset of javac that can generate classes from annotations (templates anyone?)

###Why do all these unit testing frameworks use annotations?
Because [NUnit](http://www.nunit.org/) uses them.

###What are annotations used for in Java?
[Deprecation](http://java.sun.com/j2se/1.5.0/docs/api/java/lang/Deprecated.html)
This is now handeled via an annotation and no longer via Javadoc. All other metadata is done via interfaces (Serializable, RandomAccess) or javadoc (in an extreme point of view, all documentation is metadata (I think python uses this approach)).
[overriding methods](http://java.sun.com/j2se/1.5.0/docs/api/java/lang/Override.html) (method inhertance in st terms)
You can annotate a method as overriding another method (in a superclass). It has no purpose, but if the method doesn't override another method, the compiler throws an error. No, I'm not joking.

[JDBC4](http://download.java.net/jdk6/docs/api/java/sql/Query.html)
Specify your query:
```
interface MyQueries extends BaseQuery {    

   @Query(sql="select name, description from mammal where weight > {weight}")
    DataSet<Mammal> getBigMammals(int weight);
}
```
 
Let the driver to the rest:
```
MyQueries mq = con.createQueryObject(MyQueries.class);
DataSet<Mammal> rows = mq.getBigMammals(200);
```

###When are these annotations instantiated?
Good question (read: I don't know it).
 
###Links
[http://java.sun.com/docs/books/jls/third_edition/html/interfaces.html#9.6](http://java.sun.com/docs/books/jls/third_edition/html/interfaces.html#9.6)
