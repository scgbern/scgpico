---
Title: How to get eduroam to work
---
#How to get eduroam to work
# First try setting it up manually:


- **Security**: WPA&WPA2 Enterprise
- **Authentication**: Protected EAP (PEAP)
- Put a checkbox in **No CA certificate is required**
- **PEAP version**: Automatic
- **Inner authentication**: MSCHAPv2
- **Username**: your username@campus.unibe.ch account
- **Password**: your password from that account


#If that does not work:

Well... good luck. [There's an essential tutorial by the Informatikdienste as to how to make eduroam work.](http://www.google.ch/url?sa=t&source=web&cd=3&ved=0CB4QFjAC&url=http%3A%2F%2Fwww.id.unibe.ch%2Funibe%2Fverwaltungsdirektion%2Finformatikdienste%2Fcontent%2Fe5911%2Fe5920%2Fe11087%2Fe5928%2Fe5964%2Fe5965%2Ffiles11636%2FeduroammitMACOSX10.5.x.pdf&ei=q5AWTLzUM86bOMGv3LUM&usg=AFQjCNF-hBaYfdCEgmp0e-OeJpleywoZgg) However, as the inner identity, choose "@unibe.ch" and NOT, as they suggest, UNIBE.CH. This is due to a suggestion by Peppo which has worked nicely for me, so far.

Your username and password should be your student account at the university, and not the IAM account. That doesn't mean that the IAM acccount wouldn't work: it will, but only in Bern, or in Niko's case: only in his office. The student account should work across Switzerland. Like I said: good luck!

[If things don't work right away, you'll be best served at the Helpdesk of the Informatikdienste.](http://www.id.unibe.ch/content/helpdesk/index_ger.html)
