---
Title: Related Work
---
#Related Work
Active context is a first-class context which combine several ideas found in other programming language abstractions; it shares similarities with *environment*, *contextual layer*, *module mechanism* and *persistent object upgrade*. 

![Related_work_vienne_diagram](%assets_url%/files/b2/s623h572b8u2i5mqgxi43sh24ndysx/Picture-1.png)

The notion of **first-class context** is of course borrowed from other work on context-oriented programming. However, unlike other work, the context does not define behavioral variations, but state variations.

The state variations are realized with **transformation function**, traditionally found in persistent object update mechanism. Objects can then be morphed to adapt to the new shape of the class.

Class **name resolution** is also contextual. This dynamic binding resembles the notion of environment. 

All in all, active context brings **modularity**, and allow for instance different version of the same class to co-exists.
