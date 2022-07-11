---
Title: PackageInfoTweak
---

# Download

-  Repository: OBPackageBrowser
-  Location: http://www.squeaksource.com/OBPackageBrowser

# Current issues

-  after loading a new version using MC, it can happen that the cache is not completely valid any more (due heavy dependence on system notifications), refresh using:
	-  PackageExtensionOrganizer reinitialize
	-  PackageClassOrganizer reinitialize


# Performance

| | items in the configuration &nbsp; | new/enhanced version &nbsp; | old version (same without cache) &nbsp; | ??? x faster &nbsp; |
|---|---|---|---|---|---
| classes | 877 | 18.1 ms | 2779.6 ms | 150
| method categories | 4637 | 578 ms | 13710 ms | 25
| methods | 19591 | 4307 ms | 142067 ms | 30

# Code
``` classes := Smalltalk allClasses 
	select: &#91; :class | 
		('\*kernel\*' match: class category)
		or: &#91; '\*collection\*' match: class category &#93;
		or: &#91; '\*morphic\*' match: class category &#93; &#93;.
```

``` block := &#91; classes collect: &#91; :class | PackageOrganizer default packageOfClass: class &#93; &#93;.
 ((1 to: 20) collect: &#91; :i | MessageTally time: block &#93; ) average asFloat.
```

``` block := &#91; mcats collect: &#91; : a | PackageOrganizer default packageOfMethodCategory: a value in: a key &#93; &#93;.
 mcats := classes gather: &#91; :class | class organization categories collect: &#91; :cat | class -> cat&#93; &#93;.
 ((1 to: 10) collect: &#91; :i | MessageTally time: block &#93; ) average asFloat
```

``` methods := classes gather: &#91; :class | class selectors collect: &#91; : sel | MethodReference class: class selector: sel &#93; &#93;.
 block := &#91; methods collect: &#91; :mref | PackageOrganizer default packageOfMethod: mref &#93; &#93;.
 ((1 to: 10) collect: &#91; :i | MessageTally time: block &#93; ) average asFloat
```
