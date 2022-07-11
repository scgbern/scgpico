---
Title: Monticello Package Browser
---

#Having one self contain package related tool
Where:

- Packages are <i>First class Entities</i>, it make simpler operations such as renaming, refactoring (fusion of two packages), analysis, ...
- Package related Information like class extension are quickly rendered. You can browse extension of the Package without waiting for dozen of seconds. Just to browse extension of the System package, about 40 seconds on my computer to find out that System extends Object, Behavior and ClassDescription with 5 methods. With the MonticelloPackageBrowser, it is instantaneous.
- Packages are commented
- Compatible with the PackageInfo naming convention (\*mypackage-), therefore your project will be still loadable in a old image.
- People who does not care about modules at all (e.g., if they prefer ChangeSets) will not notice any difference.
- Load, save, repository management, get package information (e.g., class extensions) from within a single tool.


---
#Status of the Monticello Package Browser
The last MC version on SqueakMap is 38. The current version of the browser is 0.5.
<b>What is new in this version:</b>

- Comment can be assigned to packages (of course, they are saved and retrieved), however the GUI is not well supported.
- Running test unit classes (it is not related to packages, but this is quite useful).

<b>Tentative Roadmap:</b>
0.6 - GUI Prerequisite support for prerequisite packages
0.7 - Optimizations (Omnibrowser is a a bit slow, I need to dive into it)
0.8 - Support for package refactorings (fusion of two packages, fading a package into the system, divide a package into smaller pieces, ...)
0.9 - Binary support for packages.
1.0 - Squeak 4.0


---
#How to try it out
##Either you install it yourself
From a frech image:

- Install Monticello
- Install Omnibrowser
- Load Package-ab.38.mcz from 
<code>
MCHttpRepository
    location: 'http://www.squeaksource.com/PackagesForSqueak'
    user: 'ab'
    password: \''
</code>

Then perform: <code>Package bootstrap</code>
A new entry for the package browser is added to World/open
