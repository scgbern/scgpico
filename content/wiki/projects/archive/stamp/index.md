---
Title: Stamp
---

A Mailing List Manager for Squeak.


---
##People

-  <strong>Supervision:</strong> [Marcus Denker](http://www.iam.unibe.ch/~denker/)
-  <strong>Developer:</strong> Anselm Strauss

##Code
See [http://www.squeaksource.com/stamp/](http://www.squeaksource.com/stamp/)

##This Page

-  Validate [HTML](http://validator.w3.org/check?uri=http%3A%2F%2Fsmallwiki.unibe.ch%2Fstamp), [CSS](http://jigsaw.w3.org/css-validator/validator?uri=http%3A%2F%2Fsmallwiki.unibe.ch%2Fstamp)
-  [Check Links](http://validator.w3.org/checklink?uri=http%3A%2F%2Fsmallwiki.unibe.ch%2Fstamp)


---
#Information
##Documents

-  [RFC 2821](http://www.rfc.net/rfc2821.html) - Simple Mail Transfer Protocol
-  [RFC 2822](http://www.rfc.net/rfc2822.html) - Internet Message Format
-  [RFC 2369](http://www.rfc.net/rfc2369.html) - Mailing list command header fields
-  [RFC 2076](http://www.rfc.net/rfc2076.html) - Common Internet Message Headers
-  [VERP](http://cr.yp.to/proto/verp.txt) - Variable Envelope Return Paths
##Related work in Squeak

-  smtpserver on [http://www.squeaksource.com/smtpserver/](http://www.squeaksource.com/smtpserver/)
-  Squeak standard packages and classes: SMTPClient, Network-RFC822, Network-Mail Reader, Network-MailSending
-  [KomServices](http://squeaklab.org/comanche/services/index.html)
##Smalltalk

-  [ANSI Smalltalk Exceptions](http://www.whysmalltalk.com/articles/bykov/exceptions_by_design.htm)
-  [Making Squeak Productive](http://www.duke.edu/~bmp5/squeak/usable.html)
##Seaside

-  [Configuration and Preferences](http://www.seaside.st/Documentation/ConfigurationandPreferences/)
-  [Configuration Management](http://www.shaffer-consulting.com/david/SeasideConfiguration/SeasideConfigurations.html)
##Other mailing list managers

-  [GNU Mailman](http://www.gnu.org/software/mailman/)
-  [Ezmlm](http://www.ezmlm.org/)
-  [Majordomo](http://www.greatcircle.com/majordomo/)
-  [mlmmj](http://mlmmj.mmj.dk/)
##Tests

-  [Software testing](http://en.wikipedia.org/wiki/Software_testing)
-  [SUnit Explained  (PDF)](http://www.iam.unibe.ch/~ducasse/Programmez/OnTheWeb/SUnitEnglish2.pdf)
-  [Mocks vs. Stubs](http://www.martinfowler.com/articles/mocksArentStubs.html)
-  [Mock Objects](http://www.mockobjects.com/)
##Think about it

-  automatic reinitialization of class vars upon code changes
-  possible concurrency problems:
	-  modyfing non-existent element
	-  collections not thread-safe
	-  inconsistencies in manager

-  equal/identical: adding element to collection should test for non-equality, removing element should test for identity; both requirements can not be combined in a collection


---
#Bugs

-  received line is not inserted at top of mail
-  no loop detection
-  <span style="color:green">DONE report vg-regex commutative bug
-  <span style="color:green">DONE report seaside/wakom/socketstream memory exhaustion bug


---
#Documentation
##Software Dependencies

| | | |
|---|---|---|
|<b>Component</b>|<b>Version(s) tested</b>|
|Squeak|3.9-7067|
|KomServices|1.1.2|
|KomHttpServer|7.0.4|
|Seaside|2.5|
|DynamicBindings|1.21|
|Cryptography|0.3|
|VB-Regex|1.1|


---

```\[EOF]
```
