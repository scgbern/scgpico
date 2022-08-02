---
Title: Polite for EV3
---
#Polite for EV3
!http://www.terrapapers.com/wp-content/uploads/2013/04/Block-Party-Lego-robotics-competition-4.jpg

#Context
The LEGO Mindstorms was initially developed as a collaboration project between the swiss scientist Seymour Papert, and the LEGO company as a software and hardware platform which would **allow children to get accustomed with computational thinking**. The third generation Mindstorms kit, the EV3, contains a powerful hardware layer running Linux.


Polite is an experiment developed at the University of Bern in **bringing programming languages closer to natural languages**. A program written in Polite looks very close to natural language, while still being formal and completely unambiguous. Consider for example the following snippet which implements the recursive merge merge sort function: 

```
 merge sort: a
	if: a, has one element then: [^a]

	left := merge sort: (the first half of: a).
	right := merge sort: (the second half of: a).
	^ merge: (left) with: (right).
```

#Goal
One problem of the EV3 platform is that it can only be programmed via a graphics editor which has a lot of limitations. To solve this problem, you will create an interface to control the EV3 programmatically from Polite. 


Since EV3 already contains an HTTP server to which one can connect and send commands remotely to the various sensors and actuators you will have to provide an API in Polite which will manage the communication with the HTTP server and allow the controlling of the EV3. You will have to create a set of corresponding classes and APIs and your goal will be to make them as intuitive as possible. We evidently have a Mindstorms kit that you can play with during the project...

Your task would be to design an appropriate API for the Lego Mindstorms, and implement this API in terms of the web server that can be run on the platform. Potential code could look like in the following example: 

```
 Silly Roomba Robot >> sweep the floor
    "this method emulates a very silly Roomba robot"
    50, times, repeat: [
        angle = Random, angle.
        self, turn right: angle.
        self, move forward until any obstacle.
    ]
```

However, you would have to design the API in such a way that it makes sense to you. And you will have our feedback and support.

#Further Reading

-  Brief overview of Polite - [/research/Polite](%base_url%/research/Polite)
-  Overview of Mindstorms -  http://www.lego.com/en-us/mindstorms/gettingstarted/historypage/
-  Smalltalk syntax on a postcard - [http://goo.gl/38zIu6](http://goo.gl/38zIu6)
