---
Title: PetitParser Compiler
---
#PetitParser Compiler

![Logo](%assets_url%/download/petitparser/pc-logo-v2.png)

<br />
Petit Compiler accepts PetitParser as input and produces a Smalltalk class with an equivalent top-down parser. Combinators of PetitParser  are analyzed and the fastest parsing strategy is choosen for each of them. The compiled parser is significantly faster.

<br />
<br />

#Performance
##Smalltalk
We compare four different Smalltalk parsers. All of them create an identical AST:

-  **PetitParser** is an implementation of a Smalltalk parser in PetitParser.
-  **Compiled PetitParser** is a compiled version of the above parser.
-  **SmaCC** is a parser compiled by SmaCC ([see more](https://github.com/ThierryGoubier/SmaCC)) from a LALR grammar.
-  **Hand-Written** is a hand-written parser used by Pharo to compile its code.

<div>
<center>![Smalltalk-speedup](%assets_url%/download/petitparser/performance-smalltalk-speedup.png)</center>
Speedup compared to PetitParser.
</div>
<div>
![Smalltalk-tpc](%assets_url%/download/petitparser/performance-smalltalk-tpc.png)
<center>Average time per character for each of the parsers.</center>
</div>


##Other Benchmarks
In general, we measure performance speedup ranging form factor two to ten. In the figure bellow, there is a speedup for the following grammars:

-  **Identifier** parses list of identifiers
-  **Arithmetics** parses an aritmetic expressions (with priorities of operators)
-  **Smalltalk** is PetitParser implementation of Smalltalk grammar.
-  **Java** is PetitParser implementation of Java grammar.
-  **Python** is an island gramar that extracts structure of Python programs while utilizing indentation.

<div>![Speedup](%assets_url%/files/b8/rwxmje9y5a1teein09iyfwb4sb41fg/performance-0.png)</div>


#Installation
```
Gofer new smalltalkhubUser: 'JanKurs' project: 'PetitParser';
    configurationOf: #PetitCompiler; load.
(Smalltalk at: #ConfigurationOfPetitCompiler) perform: #'loadStable'.
```

#Using PetitCompiler
```
| petitParser compiledParser |
petitParser := PPSmalltlakParser new.
"compilation might be costly do it only when you change your parser"
compiledParser := parser compile.
compiledParser parse: 'foo ^ 1'.
```

Visit [Smalltalkhub](http://smalltalkhub.com/#!/~JanKurs/PetitParser) for more information.

#Limitations

-  All your code should be functional, i.e. no state should be stored in additional instance variables of PPCompositeParser.
-  If there are other problems, it is probably a bug in implementation. In that case, please contact Jan ([this Jan](%base_url%/staff/kursjan)).


#Supported Smalltalks
PetitCompiler supports [Pharo 5](http://smalltalkhub.com/#!/~JanKurs/PetitParser) and Smalltalk/X. 

Do not hesitate to contact us, if you want to port into your own Smallatlk.

#Publications
[Author Page](%assets_url%/scgbib/?query=petitcompiler&filter=Year)
