---
Title: bc on Truffle
---

#Project Idea

<div align="justify">

[bc](https://linux.die.net/man/1/bc) is an arbitrary precision calculator language used as a command line calculator in Unix systems.
Besides arithmetic expressions, it also support a small C-like statement syntax including control structures.
The goal of this project is to implement bc, or a subset of it, as a [Truffle](https://github.com/oracle/graal/tree/master/truffle) language.
Truffle is a framework for writing AST interpreters running on [GraalVM](https://github.com/oracle/graal), unifying multiple languages to a polyglot, inter-operable runtime.
Currently, the simplest non-trivial Truffle language is [SimpleLanguage](https://github.com/graalvm/simplelanguage), which is maintained by Truffle developers.
Unfortunately, the aforementioned language is not simple at all.
It is already too complex to serve as an entry-level introduction to Truffle.
As bc is much simpler, we expect a Truffle bc to serve the purpose as a Truffle introduction much better.

This project is best suited for a student with prior experience with parser and compiler technology, or a high interest in learning on how programming languages are implemented.

</div>

#Contact
[Manuel Leuenberger](%base_url%/staff/ManuelLeuenberger)

[Boris Spasojević](%base_url%/staff/Boris-Spasojevic)
