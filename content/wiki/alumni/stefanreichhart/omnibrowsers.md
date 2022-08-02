---
Title: OmniBrowsers
---
#OmniBrowsers
# Goals:

-  Provide simple AND flexible AND extendable AND powerful browsers for the Squeak IDE
-  Get rid of the old stuff ...
-  Tightly integrate Unit-Testing AND Code-Analysis into the development process
-  ...


---

# OBTesting (newest OB only; old version=OmniTesting2)

-  Standard System-Browser supporting testing actions
	-  old page: [OmniTesting](%base_url%/wiki/alumni/stefanreichhart/omnitesting)
	-  Debug, run tests, run defects, profile, run package, run tests in working set...
	-  context sensitive actions for searching tests/sources ...

-  Dynamic Source-Code Generation 
	-  Only empty templates (yet)
	-  Test-First-Development!

-  NEW
	-  Testing actions globally available, also for packages
	-  Test-Framework independent
	-  Smart and fast cache
	-  Fast test-status panel 
	-  Colors representing test result 
		-  Light to dark green = Success
		-  Orange = Failure
		-  Red = Error



# OBPackageBrowser (newest OB only)

-  Package browser
-  Based on the latest PackageInfo & Tweak
-  Standard package actions and refactorings

# OBExtensionBrowser (newest OB only)

-  Browsing only class-extensions/packages (normal, empty, obsolete)
-  Based on the latest PackageInfo & Tweak
-  Standard extension actions and refactorings

# OBChangesBrowser (newest OB only)

-  A 4-pane browser:
	-  change-set, change-class, change-method, change-versions
	-  standard change-set actions

-  Bugs:
	-  Change-Notification missing -> no refresh
	-  Not all version-sources can be retrieved -> error


# (beta) OBFileBrowser (old OB)

-  Unifying File and Directory
-  Reading, Creating, Inspecting, Writing files
-  Many actions missing, not usable yet
-  Bugs:
	-  big & dirty hack -> bad FileSystem


# (beta) OBMonticello (newest OB only)

-  Only browsing for a case study - usability ?
-  Browsing a repository or a package like a file system / ~ system browser 
-  Bugs:
	-  many


# OBCommands

-  OBInspectorCommands: 
	-  inspecting any OB-Node

-  OBImplementorsCommands: 
	-  implementors of hierarchy, package

-  OBSendersCommands: 
	-  senders of current class, hierarchy, package

-  OBTraitCommands: 
	-  users of selected trait

-  OBFinderCommands: 
	-  find classes by pattern
	-  find any implementors/implementations of a method-pattern


# OBVisitor

-  Visitor over OB-Nodes
-  Predefined standard-visitors
-  Allowing various visiting-strategies without overloading nodes


---

# Downloads:

-  [http://www.squeaksource.com](http://www.squeaksource.com), OBAddOns, BrowserSupport, ...
-  [http://mc.lukas-renggli.ch](http://mc.lukas-renggli.ch), ...
-  ...
