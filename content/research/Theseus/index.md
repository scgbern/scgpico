---
Title: Theseus
---
#Theseus
![Ship](%assets_url%/files/dc/0i2fztf32htthpgpp7cnnxfapk01x8/ship.jpg) We explore in this project a novel approach to dynamically update server applications without restarting them (live updating). 

In our approach, different versions of the code  coexist in the system, but are isolated into distinct *contexts*. Contexts are first-class. The server can switch from one context to another incrementally in order to process incoming requests. Eventually, the update terminates when the old context is not used any longer and can be garbage collected. 

The name of the project comes from [Theseus' paradox](http://en.wikipedia.org/wiki/Ship_of_Theseus), which raises the question of whether an object that has had all its component parts replaced remains fundamentally the same object. In our case, is the software running merely a new version of the same application, or another application?

**Publications**

[Papers](%assets_url%/scgbib/?query=Wernli+theseus&filter=Year)
