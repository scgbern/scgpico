---
Title: Running Smalltalk on WebAssembly
---
#Running Smalltalk on WebAssembly
WebAssembly is a simple code format, that was introduced as a compile
target for the web. The idea is to support arbitrary high-level
programming languages in the browser, by exposing a low-level
instruction set for compiler writers. There are already several mature
WebAssembly compilers for languages like C, C\+\+, and Rust. Currently
WebAssembly has a very limited feature set. Compiling dynamic languages
to WebAssembly is therefore an exciting and open problem.

Watch [https://www.youtube.com/watch?v=WTxPqDBo8CI](https://www.youtube.com/watch?v=WTxPqDBo8CI) for a quick WebAssembly
(also known as Wasm) introduction.

The goal of this project is to take a well-defined dynamic language and
compile it to WebAssembly. As a starting point we will use SOM (Simple
Object Model/Smalltalk), for which many reference implementations for
other host languages exist. Many features like reflection or garbage
collection might turn out to be quite hard to support. We will therefore
focus on building a minimal prototype, ignoring some of the hard issues,
allowing us to explore the basics. This project is best suited for
students that already took a compiler construction lecture. There is the
possibility to extend the work into a thesis.

This is a follow up project on [https://github.com/javinator/wasm](https://github.com/javinator/wasm),
for which Vincent built a js-fiddle like Wasm compiler playground.

#Contact
[Manuel Leuenberger](%base_url%/staff/ManuelLeuenberger)
[Olivier Flückiger](%base_url%/staff/oli)
