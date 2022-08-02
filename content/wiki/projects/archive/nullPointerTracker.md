---
Title: Where did this null come from???
---
#Where did this null come from???
In a previous study, we found out that NullPointerExceptions are very serious in Java projects. When a NullPointerExceptions occurs the developer is provided with a stack trace to the dereferencing of the null pointer. This only gives insight into the effect of the fault but not into its cause. When and why was this reference set to null? 

The goal of the project is to attempt a minimum overhead instrumentation of java source code to enable providing the developer with the stack trace of where the dereference happened and the stack trace of where the value was set to null.

Contact people:
[Nevena Milojković](%base_url%/staff/Milojkovic), [Boris Spasojević](%base_url%/staff/Boris-Spasojevic)
