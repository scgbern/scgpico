---
Title: Classboxes
---

Classboxes are a minimal module system supporting "local rebinding". 

Classical modules systems support well the modular development of applications but lack the ability to add or replace a method in a class that is not defined in that module. But languages that support method addition and replacement do not provide a modular view of applications, and their changes have a global impact. The result is a gap between module systems for object-oriented languages on one hand, and the very desirable feature of method addition and replacement on the other hand. 

<div class="float largethumbnail">[![Screenshot1.png](%assets_url%/files/10/px3gpgtcqwty9iimnas45gtnm0s3yl/screenshot1.png)](%assets_url%/files/10/px3gpgtcqwty9iimnas45gtnm0s3yl/screenshot1.png)</div>


To solve these problems we present *classboxes*, a module system for object-oriented languages that allows method addition and replacement. Moreover, the changes made by a classbox are only visible to that classbox (or classboxes that import it), a feature we call *local rebinding*. 

To validate the model, we have implemented it in the Squeak Smalltalk environment, and performed experiments modularizing code. The modified VM can be sent to anyone who make an explicit request by email.



#Current Status

The model is implemented and fully usable. A browser has been designed that allows classboxes manipulation. 

*Work In Progress:*

 

- Scripting mechanism using classboxes as deployment unit.
- Adding state in a classbox. The notion of class extension is refined to not only to modify the method dictionary of a class, but also its state template.
- Incorporating Traits with Classboxes.


#Contact

- [Alexandre Bergel](bergel@iam.unibe.ch) 
- [St&eacute;phane Ducasse](ducasse@iam.unibe.ch)
- [Roel Wuyts](Roel.Wuyts@ulb.ac.be)
- [Oscar Nierstrasz](http://www.iam.unibe.ch/~oscar/)
