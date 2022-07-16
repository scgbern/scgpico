---
Title: FreQ
---
#FreQ
![Freq-tmp-logo](%assets_url%/files/51/xmdxwrup9c62j54uhq85c3mslthm4h/Untitled-24.png)

Freq is a plugin for the Pharo default browser called Nautilus. 
This plugin shows the most commonly used methods of classes. The information is obtained by analysing a set of 109 Pharo Smalltalk projects defined in the configuration browser (at the time the database was populated). This analysis consist of running a type inference engine on all instance variables of all analyzed projects, and only storing to the database when a type of a variable can be uniquely inferred.


**How to install FreQ:**


- Open workspace and execute

```
Gofer new
url: 'http://smalltalkhub.com/mc/spasojev/FrequentlyUsedMethodsPluginForNautilus/main';
package: 'ConfigurationOfFreQ';
load.
(Smalltalk at: #ConfigurationOfFreQ) loadDevelopment.
```



- Enjoy
