---
Title: Tutorial
---

[Spy](%base_url%/wiki/projects/archive/spy) is a Smalltalk VM written using the PyPy toolchain.

&nbsp;

# First steps with Spy

Make sure you are running Python version 2.5 or higher, and checkout the project from subversion

```    > svn co http://codespeak.net/svn/pypy/dist pypy-dist
    > cd pypy-dist
```

Now, lets generate some Squeak VMs. Switch to the translation goal folder and run the tool chain

```    > cd pypy/translator/goal
    > ./translate.py --gc=generation targetfibsmalltalk.py
```

This yields tons of output and ends in the debugger, just press ctrl-D to leave and run the generated VM as follows

```    > ./targetfibsmalltalk-c 25
```

If you browse the target's python file, you'll find some fixture code together with a function called <code>entry_point(argv)</code>. The fixture code is executed before the tool chain takes over, it may use the full power of Python and is not restricted to RPython. Then, the tool chain is started up, taking the <code>entry_point</code> function and the fixture's result as an input, to generate the VM. Therefore, all code eventually called by the entry point must conform to RPython.

Other available goals for Smalltalk are

```    > ls \*smalltalk\*.py

    targetfibsmalltalk.py
    targettinybenchsmalltalk.py
    targetimageloadingsmalltalk.py
```

Browse Spy's source code at 

```    > cd ../../..
    > cd pypy/lang/smalltalk
```

&nbsp;

Back to [main page](%base_url%/wiki/projects/archive/spy)
