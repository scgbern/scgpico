---
Title: ByteSurgeon
---
#ByteSurgeon
ByteSurgeon is a library to transform binary code in Smalltalk. It takes full advantage of the flexibility of the Squeak environment to enable bytecode transformation at runtime, thereby allowing dynamic, on-the-fly modification of applications. ByteSurgeon operates on bytecode in order to cope with situation where either the source code or a full compiler is not available, while providing appropriate high-level abstractions so that users do not need to program at the bytecode level. 

#Users of ByteSurgeon

ByteSurgeon has been used in a number of projects: 

-  Geppetto I, Unanticipated Partial Behavioral Reflection, [Paper](%assets_url%/scgbib/?query=roet07b&filter=Year), [Source Repository](http://www.squeaksource.com/Geppetto.html) (David R&ouml;thlisberger)
-  Untuck, An Omniscient Debugger: [Paper](%assets_url%/scgbib/?query=hofe06a&filter=Year) (Christoph Hofer)
-  Christo, Testcoverage Analysis: [Christo Wiki](http://smallwiki.unibe.ch/stefanreichhart/codecoverage/) (Stefan Reichart)
-  Object History, Persistent Objects: [Object History Website](http://decomp.ulb.ac.be/frdricpluquet/researchactivities/objecthistory/) (Fr&eacute;d&eacute;ric Pluquet)

#Download

Ready to run image: [ByteSurgeon.zip](%assets_url%/download/bytesurgeon/ByteSurgeon.zip) 

To install the code in an existing image: 

-  Load package *ByteSurgeonLoader* from [ SqueakSource](http://www.squeaksource.com/ByteSurgeon.html) 
-  Execute *ByteSurgeonLoader new loadAll* (Pharo) or *ByteSurgeonLoader new loadAllSqueak* (Squeak) 

#Publications

-  Marcus Denker, St&eacute;phane Ducasse and &Eacute;ric Tanter, *Runtime Bytecode Transformation for Smalltalk*, **Journal of Computer Languages, Systems and Structures**, vol. 32, no. 2-3, July 2006, pp. 125-139. [Abstract](%assets_url%/scgbib/?query=denk06a&filter=Year), [PDF](%assets_url%/archive/papers/Denk06aRuntimeByteCodeESUGJournal.pdf)

#Contact

- Author: Marcus Denker 
- The ByteSurgeon Mailinglist is reflectivity@iam.unibe.ch. You can use the <a href= "https://www.iam.unibe.ch/mailman/listinfo/reflectivity">Mailman web interface</a> to subscribe. 
- For reporting bugs, please use [the bug tracker](http://code.google.com/p/reflectivity/issues/list).
