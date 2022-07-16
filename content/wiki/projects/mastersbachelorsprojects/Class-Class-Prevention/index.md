---
Title: Class Clash Prevention Tool For Smalltalk
---
#Class Clash Prevention Tool For Smalltalk
Pharo Smalltalk only has a global namespace. This can cause a problem if multiple projects declare a class with the same name, as those projects then cannot coexist in the same Smalltalk image without modification. The aim of this project is to use the existing Ecosystem Monitoring Framework ([https://github.com/boris-spas/ecosystemMonitoringFramework](https://github.com/boris-spas/ecosystemMonitoringFramework)) to export a mapping from all available projects to all the classes they declare, and then to develop a plugin for Nautilus (the Pharo class browser) that will allow the user to be notified if a newly created class conflicts with a class in another project.

TOOLS: MongoDB, Pharo Smalltalk, Bash

Contact person: [Boris Spasojević](%base_url%/staff/Boris-Spasojevic)
