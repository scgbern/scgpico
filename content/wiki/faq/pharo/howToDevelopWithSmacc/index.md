---
Title: Which packages should I load to develop with SMaCC?
---

- **Q Which packages should I load from [http://www.squeaksource.com/SmaccDevelopment.html](http://www.squeaksource.com/SmaccDevelopment.html) to write parsers?**
- **A** Load AST, Refactoring-Core, SmaCC and SmaCCDev
```ScriptLoader loadLatestPackage: 'AST' from: 'http://www.squeaksource.com/AST'.
ScriptLoader loadLatestPackage: 'Refactoring-Core' from: 'http://www.squeaksource.com/RefactoringEngine'.
ScriptLoader loadLatestPackage: 'SmaCC' from: 'http://www.squeaksource.com/SmaccDevelopment'.
ScriptLoader loadLatestPackage: 'SmaCCDev' from: 'http://www.squeaksource.com/SmaccDevelopment'.
```
Be sure that SmaCC is up-to-date first!
*NB:* The first two are already in the Pharo-dev images
*Warning:* SmaCC-Development is for Squeak 3.8 &mdash; don't use it
