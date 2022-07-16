---
Title: HTTPS to HTTP downgrade
---
#HTTPS to HTTP downgrade
#Introduction
Are you interested in finding vulnerabilities in mobile apps?
Did you already work with web APIs and wondered if they provide the same level of security as other HTTP clients, e.g., web browsers?

We performed studies on web API security in mobile apps and found that unprotected HTTP communication is very prevalent [1]. 
Even worse, many of the HTTPS security features supported by web browsers are not implemented in API clients.
This project aims to find missing HTTPS feature support in web API clients, and to exploit apps using such insecure clients.
Our goal is to raise awareness that HTTP is a generic and widely used communication protocol, but its security features are not yet supported accordingly.

#Problems
A few problems you'll be confronted with:

-  Complex network communication (HTTP(S), HTTP headers, localhost, traffic sniffing, ...)
-  Decompiled Java byte code
-  Testing of apps with the Android emulator

#State of the art
There exist various papers that explain attacks and remediation strategies for HTTPS in browsers [2] [3], however the discussion barely exists for other HTTPS clients such as web API client libraries.
For instance, we found that one library had initial support for some security features, but the developers decided to not add that feature to their master branch.

#Task
In this seminar project, we want to exploit apps through vulnerable web API communication.<br>

Your task will consist of:<br>

-  Creating one or more Proof-of-Concept (PoC) apps
-  Exploiting the PoCs
-  Exploiting commercial apps that show the same characteristics

#Guiding research questions

-  What are security features in HTTPS?
-  How do the security features impact web API clients?
-  Can we exploit apps?
<br>

#References
[1] [Web APIs in Android through the Lens of Security](/archive/papers/Gadi20a.pdf)<br>
[2] [Presentation: More Tricks For Defeating SSL In Practice](https://infocon.org/cons/Hack.lu/2009/Presentations/moxie-marlinspike-some_tricks_for_defeating_ssl_in_practice.pdf)<br>
[3] [Paper: Bypassing HTTP Strict Transport Security](https://paper.bobylive.com/Meeting_Papers/BlackHat/Europe-2014/eu-14-Selvi-Bypassing-HTTP-Strict-Transport-Security-wp.pdf)<br>
<br><br>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)
