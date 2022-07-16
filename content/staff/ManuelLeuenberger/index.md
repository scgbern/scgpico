---
Title: Manuel Leuenberger
---
#Manuel Leuenberger

- phone: \+41 31 511 7636
- email: leuenberger|at|inf.unibe.ch
- twitter: [@maenuleu](https://twitter.com/maenuleu)

I am a PhD student and working on the effects of having nullable types by the example of Java. There seems to be consensus that the nullable by default types cause problems (bugs) and that one should use them carefully. Nevertheless, the negative effects can be observed to this day and the problem can not be considered solved. I try to provide more evidence, both quantitative and qualitative, whether null usage is problematic in general. I am also interested in wether there are certain patterns that avoid the problem effectively.

In my bachelor thesis, I worked on Talents, dynamically composable units of reuse. I built a streams framework where orthogonal features are modelled as Talents and easily composable to build a stream with the desired features (see [here](/scgbib?query=Leue13a&display=abstract)).

In a seminar project, I classified null checks in a big corpus. Apparently, 71% of objects compared against null are in fact returned from method calls. Surprisingly to me, we found that 35% of all conditionals (if, where, for, ternary operator, ...) are null checks (see [here](/download/softwarecomposition/ManuelSemianrPresentation.pdf)).

In my master thesis I examined which methods are checked how often. For each method we compute the nullability, the ratio between checked calls and all calls. We find that about 65% of the method calls are never checked in the corpus of Apache API clients. Inspecting the documentation we notice that whether or not a method may return null is often undocumented. This accounts for both methods that are checked for null and those that are not. We also find unnecessary null checks, i.e. the implementation of the checked method is guaranteed to never return null or states so in the documentation. We propose to use nullability as an empirical heuristic to assist developers by presenting it in an Eclipse plugin (see [here](/scgbib?query=Leue17a&display=abstract)).

#Project Proposals


-  [Compiling a higher-level language to WebAssembly](%base_url%/wiki/projects/archive/compiling-a-higher-level-language-to-webassembly)
-  [Extending the Integrated Literature research Environment (ILE)](%base_url%/wiki/projects/mastersbachelorsprojects/extending-the-integrated-literature-research-environment--ile-)
-  [Augmenting a Source Code Editor with Method Nullability Data](%base_url%/wiki/projects/archive/augment-source-code-editor-with-method-nullability-data)
-  [Identify Non-Nullable Methods](%base_url%/wiki/projects/archive/identify-non-nullable-methods)
-  [Schizophrenic Classes](%base_url%/wiki/projects/mastersbachelorsprojects/schizophrenic-classes)
