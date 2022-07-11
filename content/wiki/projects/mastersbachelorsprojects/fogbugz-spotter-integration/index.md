---
Title: Fogbugz-Pharo Integration
---

#Motivation
Bug tracking systems are essential in software development as they allows teams to manage bugs, organize work and prioritize what's important. ![Fogbugz](http://www.fogcreek.com/fogbugz/) is a bug tracking system used by the ![Pharo](http://www.pharo.org) language. Fogbugz is a lightweight and easy to use bug tracker with great search functionality. 

Nevertheless, Fogbugz is not integrated with the Pharo IDE. It can only be accessed using a web browser. The goal of this project is to create a link between Pharo and Fogbugz, by allowing developers to access and search for bug reports directly from the Pharo IDE, without having to use the web browser.

#Approach
To link Pharo and Fogbugs we will use ![Zinc](http://zn.stfx.eu/zn), an open-source framework to deal with the HTTP networking protocol, to communicate with the ![Fogbugs XML API](http://tinyurl.com/n9t8br6) and extract information about bug reports. We will then integrate these data into ![Spotter](http://gt.moosetechnology.org/), the default search tool from Pharo.

This project requires only good programming skills. You do not need to know how Pharo or Fogbugs work.

Contact: [Andrei ChiÈ](%base_url%/staff/andreichis)
