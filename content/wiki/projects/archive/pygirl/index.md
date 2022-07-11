---
Title: PyGirl
---

<b>PyGirl</b> is a whole-system virtual machine (WS VM) implementation for the classic Gameboy.

PyGirl is mostly meant as a research project in which we investigate the usefulness of the [PyPy](http://codespeak.net/pypy/dist/pypy/doc/home.html) toolchain for building cleanly designed, but ultimately efficient, WS VMs. PyGirl is fully written in RPython.

The main goal of RPython in PyPy is to support high-level language virtual machines (HLL VMs). In this project we investigate if it is possible to use the same techniques for WS VMs, popularly known as <i>emulators</i>. We believe that much of the techniques for HLLs will allow us to write emulators with the same elegance while not losing too much performance.

Since (modern) WS VM, unlike many HLLs, are more bound to the availability of peripheral devices, a part of the focus lies in extending PyPy to fit the needs of our emulator. Which will eventually also serve HLL VMs in PyPy.

##Status
PyGirl is able to play all roms we tested. Graphics and controller are supported through the [SDL](http://www.libsdl.org/) library. Sound is not supported yet. Furthermore a meta-window mode is provided to see the background, window and the sprites separated.

##Download PyGirl
PyGirl is currently in development and is available in the main PyPy branch

-  SVN [https://codespeak.net/viewvc/pypy/dist/](https://codespeak.net/viewvc/pypy/dist/)
The debug version using memory dumps is available here

-  SVN [https://www.iam.unibe.ch/scg/svn_repos/Students/cami/pyGirl/](https://www.iam.unibe.ch/scg/svn_repos/Students/cami/pyGirl/)

##Publications

-  Camillo Bruni and Toon Verwaest, "<i>PyGirl: Generating Whole-System VMs from high-level prototypes using PyPy</i>", ([submission](http://www.iam.unibe.ch/~verwaest/pygirl.pdf)) is accepted for publication at [Tools '09](http://tools.ethz.ch/).

##Useful Links

-  [Z80 OpCode Reference](http://www.z80.info/z80href.txt)
-  [GameBoy Specs](http://www.nintendo.co.uk/NOE/en_GB/support/game_boy__pocket__color_559_562.html)
-  [PyPy Documentation](http://codespeak.net/pypy/dist/pypy/doc/index.html)

##People
[Toon Verwaest](%base_url%/staff/toonverwaest) and [Camillo Bruni](%base_url%/wiki/alumni/camillobruni)
