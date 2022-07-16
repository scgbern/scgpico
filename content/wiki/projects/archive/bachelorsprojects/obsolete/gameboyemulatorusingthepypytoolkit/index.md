---
Title: Gameboy Emulator using the PyPy Toolkit
---
#Gameboy Emulator using the PyPy Toolkit
###Why PyPy
[PyPy](http://codespeak.net/pypy) is a toolkit designed to implement Virtual Machines for dynamic languages in elegant ways, without losing too much performance. The advantage of the toolkit over other approaches is that it allows programmers to write VMs using the high-level language [RPython](http://codespeak.net/pypy/dist/pypy/doc/coding-guide.html#restricted-python), which is a Restricted version of Python (subset), which can then be compiled down to different back-end languages such as C, JavaScript, Java Virtual Machine, Low Level Virtual Machine and Common Language Infrastructure (on which C# runs, for example). Next to this, it also provides implementations for features generally needed by Virtual Machines for dynamic languages such as just-in-time compilation (JIT) and a garbage collector.

All in all, [PyPy](http://codespeak.net/pypy) is a very interesting project to have a look at. Implementing a virtual machine using [PyPy](http://codespeak.net/pypy) will provide you with more insight on how virtual machines work, without you having to break your mind over nifty C-details. But with the advantage of having a set of other versions in the end anyway.

[PyPy Presentation](http://www.youtube.com/watch?v=GnPmErtqPXk)

###Why Gameboy
Gameboy emulators are an already quite well established type of emulators. Good specifications exist of at least parts which should be supported by any reasonable Gameboy emulator [[1](http://www.iam.unibe.ch/~verwaest/gb_cpu_manual.pdf)].

A Gameboy emulators misses the target of [PyPy](http://codespeak.net/pypy) since it is not a virtual machine running a dynamic language, but a virtual machine something which is more basic.

This on the other hand, has the advantage that it will be easier to actually generate quicker results. However, since a Gameboy is a graphical device with sound and events coming from the input buttons, unexplored fields in the toolchain can be explored. And this would have a positive effect on actual virtual machines which are on the way to be implemented, like the [Py-Squeak](http://pypysqueak.blogspot.com/) project which emerged during a sprint at the SCG.
