---
Title: New Backend for Squeak Bytecode Compiler
---
#New Backend for Squeak Bytecode Compiler
The virtual machine of Squeak is a bytecode interpreter. The bytecode used is very much the original Smalltalk bytecode as defined in the 70ties.

The problem with that is that it was designed for very small machines: It has static upper limits for everything. e.g., number of temporaty variables, number of instance variables, jump offsets. This proves to be very problematic as soon as we do things like automatic code generation or instrumentation.

The New Compiler of Squeak uses a portable backend (IRBuilder). The goal of this Bachelors project is to provide a new Backend that detects the use of upper limits not expressible in bytecode (e.g. long jumps) and emits code to work around these limits.
