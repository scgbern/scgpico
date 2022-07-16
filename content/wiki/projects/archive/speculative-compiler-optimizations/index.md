---
Title: An LLVM backend for sourir
---
#An LLVM backend for sourir
We are currently working on an intermediate representation called sourir.
It is a very standard compiler IR for dynamic languages, that we enriched with an additional instruction for speculative optimizations. That means, optimizations which are not based on proven facts, but speculations, such as, this variable holds the constant 1.

Sourir is a model of an actual IR and we have only validated it with an interpreter.
The goal of this project is to take the model, create an actual IR and write a native
backend for (a subset of) it. My proposal would be to use LLVM for that. You are free to choose the language. LLVM has bindings for a number of them. E.g. C\+\+ or OCaml would both be a good fit.

It would be good if you have taken a compiler construction class before, but this is not a must.

#Resources


- Draft of an article describing sourir [https://www.o1o.ch/sourir.pdf](https://www.o1o.ch/sourir.pdf)
- Sourir slides [https://www.o1o.ch/sourir-talk.pdf](https://www.o1o.ch/sourir-talk.pdf)
- LLVM tutorial [https://llvm.org/docs/tutorial/BuildingAJIT1.html](https://llvm.org/docs/tutorial/BuildingAJIT1.html)
- Toy language LLVM JIT compiler [https://github.com/janvitek/rift](https://github.com/janvitek/rift)

#Contact
[Olivier Flückiger](%base_url%/staff/oli)
