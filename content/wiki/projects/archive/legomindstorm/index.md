---
Title: Lego Mindstorm
---

Lego Mindstorm can be easily controlled within Squeak. 
The PECOS model is a component model focused on embedded system. It has been implemented in Squeak.

<B>PECOS</B>
The PErvasive COmponent System is a component based model for embedded systems. It consists mainly of components communication throught ports connected with connections.
There are three component types:

- Active Component: Runs in its own thread.
- Event Component: Runs in an own thread if a certain event has taken place
- Passive Component: Encapsulates program logic and is called by other components. (Runs in the callers thread)

<B>RCX</B>
The RCX is the main brick of the Lego Mindstorms RIS. It's a Hitachi Microprocessor board with some external ports. These ports are either input (through an A/D converter) or output. There are three of each kind. 

---
##Download
First you have to install the SqLego files

- [http://www.iam.unibe.ch/~bergel/Lego/SqLego.tar](http://www.iam.unibe.ch/~bergel/Lego/SqLego.tar)
- [http://www.iam.unibe.ch/~bergel/Lego/PecosRcx.tar](http://www.iam.unibe.ch/~bergel/Lego/PecosRcx.tar)

Install:
File in all the \*.st files.
First the SqLego then Pecos-System then Pecos-RCX then PECOS-Tests

There is also a Monticello File at: [http://www.iam.unibe.ch/~bergel/Lego/PECOS-ho.1.mcz](http://www.iam.unibe.ch/~bergel/Lego/PECOS-ho.1.mcz)


---
##Links
Squeak: [http://www.squeak.org/](http://www.squeak.org/)

SqueakBot: [http://www.iutc3.unicaen.fr/~stincs/share/SqueakBot/](http://www.iutc3.unicaen.fr/~stincs/share/SqueakBot/)

PECOS:

- [http://www.pecos-project.org/publications.html](http://www.pecos-project.org/publications.html)
- [http://www.iam.unibe.ch/~pecos/](http://www.iam.unibe.ch/~pecos/)

Lego Mindstorms:

- [http://www.apesa.ch/](http://www.apesa.ch/)
- [http://www.object-arts.com/Bower/Bot-Kit/Bot-Kit.htm](http://www.object-arts.com/Bower/Bot-Kit/Bot-Kit.htm)
- [http://www.crynwr.com/lego-robotics/](http://www.crynwr.com/lego-robotics/)
- [http://www.idi.ntnu.no/grupper/ai/research/eval/lego_links.html](http://www.idi.ntnu.no/grupper/ai/research/eval/lego_links.html)
- [http://java.sun.com/features/2002/05/robot.html](http://java.sun.com/features/2002/05/robot.html)
- [http://www.hamjudo.com/rcx/](http://www.hamjudo.com/rcx/)
- [http://www.vorlesungen.uniosnabrueck.de/informatik/robot00/doc/lego/LASM_Bytecodes.pdf](http://www.vorlesungen.uniosnabrueck.de/informatik/robot00/doc/lego/LASM_Bytecodes.pdf)
- [http://www.vorlesungen.uni-osnabrueck.de/informatik/robot00/doc/lego/LASM_Bytecodes.pdf](http://www.vorlesungen.uni-osnabrueck.de/informatik/robot00/doc/lego/LASM_Bytecodes.pdf)

---
##Contacts
[Alexandre Bergel](bergel@iam.unibe.ch)

---
##Acknowledgment
Thanks to Andreas Hosbach and Roel Wuyts.
