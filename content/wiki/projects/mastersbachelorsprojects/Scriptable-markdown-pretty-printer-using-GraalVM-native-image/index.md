---
Title: Scriptable markdown pretty printer using GraalVM native-image
---

GraalVM enables developers to add scripting capabilities (the ability to customize the apps behavior through code scripts without rebuilding the app) to their java apps. The scripting can be done in any language built on the Truffle Framework (currently officially supported are JavaScript, Ruby, R, LLVM bitcode). It also enables developers to create a native image of their java application. This enables their program to run as a contained native application (without a JVM) enabling faster startup and less resource consumption. The aim of this project is to implement a markdown pretty printer whose behavior  can be customized with JavaScript and which can be built into a native image. Normally, Java might not be a good fit for a pretty printer since it would require booting up a resource heavy JVM for a task that needs to be done ASAP. A native language such as C&#43;&#43; would perform better, but java is much easier to code in and has better tool support. Building a native image should give us the advantages of running a native application without the need to use a non-managed and potentially unsafe language.

[More information](http://www.graalvm.org/)  

#Contact: 
[Boris Spasojević](%base_url%/staff/Boris-Spasojevic)
