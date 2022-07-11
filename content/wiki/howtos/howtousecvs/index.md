---
Title: How to use CVS
---

To summon a module from the planes of CVS, use these magic words

```    export CVSROOT=:ext:<i>username</i>@asterix.unibe.ch/home/scg/cvs/
    cvs co <i>ModuleNamePHB30</i>
```

Please cast an ssh divination to scry the full list of available modules

```    ssh scg@asterix.unibe.ch "ls cvs"
```

In combination with a pipe cantrip, you may even bind the list into a scroll

```    ssh scg@asterix.unibe.ch "ls cvs" > modules.txt
```

For more insight into the arcane art of CVS, please refer to the [Vast Dungeons of Abandoned Swiki](http://scgwiki.iam.unibe.ch:8080/SCG/501). 
