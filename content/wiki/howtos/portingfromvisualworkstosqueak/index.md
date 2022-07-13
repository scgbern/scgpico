---
Title: Porting from VisualWorks to Squeak
---

# The Port

-  There is a package <code>FileOut30</code> in [SCG StORE](%base_url%/wiki/howtos/howtomanagescgstore) that contains a Squeak exporter that mostly works.
-  It is the best to rename all classes to have a common (two letter) prefix <code>classPrefix</code> in VW (see the script below).
-  Also make sure that all class categories <code>categoryName</code> of the VisualWorks classes are properly set (also done by the script below).
-  In VisualWorks go to Settings / Source and choose the format of the file out to be Squeak.
-  Right click on your Package/Bundle and File Out/Package.
-  Drag the resulting .st file into Squeak or Pharo.

#Script to prepare the VW code
```| classPrefix categoryName |
classPrefix := 'XY'.
categoryName := 'Squeak Category Name'.
 PackageName classes do: [ :each |
	each category: categoryName.
	each renameAndFixSourceTo: classPrefix , each name ]
```

# Making Code Portable
## Do Not

| | |
|---|---|
| Namespaces | Squeak has no namespaces, instead use a two letter class prefix to avoid conflicts.
| Packages | Squeak has no packages, instead it depends on naming conventions of the class and protocol categories.
| Bindings | Squeak has no bindings #{CodeFoo.Color}</code>), instead import required namespaces into your own namespace or class.
| Weak References | Squeak has weak references, however the implementation is weak and weak references should be avoided at all cost.
| Shared Variables | Squeak has no shared variables.
| Literal Byte Arrays | Squeak has no literal byte arrays <code>#[1 2 3]</code>, instead use a normal literal array and send the message <code>asByteArray</code>.
| Object immutability | Squeak has no object immutability.
| Dependency mechanism | Squeak implements the dependency mechanism (<code>#addDependent:, #update:, ...</code>), but slightly different than VisualWorks. Instead consider using Announcements.
| Trigger Events | Squeak implements the event mechanism (<code>#when:&zwnj;send:to:with:, #triggerEvent:, ...</code>), but slightly different than VisualWorks. Instead consider using Announcements.
| GUI Framework | Squeak has a different GUI framework. Properly separate View and Model.

## Avoid To

-  Subclass any class outside your package.
-  Extend any class outside your package.
-  Use common method names like <code>#min:, #value:, ...</code>.
-  Depend on external packages.

## Do

-  Write tests that cover every line of code.
-  Write tests that cover every line of class extension code.
-  Really, write a lot of high quality tests.
