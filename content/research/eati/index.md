---
Title: Ecosystem aware type inference
---

Ecosystem aware type inference is a simple but powerful tool that leverages information from the software ecosystem to improve results provided by single system type inference. The proof of concept implementation for Pharo Smalltalk can be loaded by executing:

```Gofer new
url: 'http://smalltalkhub.com/mc/spasojev/EcoAwareTypeInferer/main';
package: 'ConfigurationOfEcoAwareTypeInferer';
load.
(Smalltalk at: #ConfigurationOfEcoAwareTypeInferer) loadDevelopment.
```

For simple usage, load the EATI plugin in to Nautilus. EATI requires an internet connection in order to get ecosystem that is regularly updated.

#Publications
![Fixed Query](%base_url%/scgbib/fixedquery)
