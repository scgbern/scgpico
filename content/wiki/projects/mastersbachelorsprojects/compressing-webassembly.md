---
Title: 'Compressing Webassembly: Efficient Stack Usage in a Stack-Based Bytecode'
---
#Compressing Webassembly: Efficient Stack Usage in a Stack-Based Bytecode
WebAssembly (wasm) is a simple code format, that was introduced as a compile target for the web. The idea is to support arbitrary high-level programming languages in the browser, by exposing a low-level instruction set for compiler writers.

A curiosity of wasm is that it is specified as a stack machine. For example in the add binary operation, the two operands are implicitly defined, as the last two results pushed to the stack. This format is supposed to be more dense. For example
```
a+b+c
```
can be compiled to 
```
(add (add (getlocal a) (getlocal b)) (getlocal c))
```
The temporary result of
```
a+b
```
does not need to be explicitly stored, it is just consumed by the second add. This leads to a more compact encoding, thus smaller files to download.

So far for the theory. It turns out that current compilers are not very good at lowering optimized code to this stack based format. For example emscripten, a C to wasm compiler, produces a lot of loads and stores instead of using the stack. We might see something like
```
(local_set temp (add (getlocal a) (getlocal b)) (add (getlocal temp) (getlocal c))
```
instead of the more optimal version above.

The goal of this seminar is to play with storing more values on the stack. The idea is to:


-  de-compile wasm code (using existing libraries)
-  re-construct an ssa representation of the wasm input
-  assign stack-slots to some and local variable slots to other values
-  lower back to normal wasm

This is the necessary infrastructure to play with different heuristics in step (3). The goal would be to find the ideal allocation for which values to keep on the stack and which ones to store in local values, that results in the smallest binary size.

We already have an algorithm for lowering ssa graphs to a stack machine, that we developed for an existing VM. You can just reuse it. This project will become part of the evaluation of a paper on that algorithm. The project can be extended to a thesis project.

Contact [Olivier Flückiger](%base_url%/staff/oli) for more details.

https://www.youtube.com/watch?v=WTxPqDBo8CI for a quick wasm introduction.
