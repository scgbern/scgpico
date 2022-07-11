---
Title: Adrian Urfer
---

6.11.2008:


-  The newest version of [KollektionsErfasser](http://www.urfer.li/adrian/master/KollektionsErfasser.jar).

2.11.2008:


-  The newest version of [KollektionsErfasser](http://www.urfer.li/adrian/master/KollektionsErfasser.jar).


-  Because of some download problems the downloadsize is limited to 1 MB. It ensures the termination of the download procedure.

> Well it does not! When trying to download the contents of http://www.fmbe.com, the read method of InputStream never terminated.

24.10.2008:


-  Several downloads of websites fail, because "subcategories" are no longer available. An example: www.test.ch/something/somecontent.html is no longer available. An option could be to download the "root" web site www.test.ch 

> This approach is not necessary. "Problematic websites" can be dismissed.

23.9.2008:


-  This website (in my opinion) shows a good overview what's necessary to download a web page: [http://www.howtocreate.co.uk/saving.html](http://www.howtocreate.co.uk/saving.html)

> For simplicity reasons only the source code of a web site is necessary. An index search doesn't require any images or videos to work. The result of an index search respectivley tag search, shows the correspondent URL. The user can view the result in it's original form on the internet.

19.9.2008:


-  The newest version of [KollektionsErfasser](http://http://www.urfer.li/adrian/master/KollektionsErfasser.jar). This version also includes the ranking of results.

4.9.2008:


-  The newest version of [KollektionsErfasser](http://http://www.urfer.li/adrian/master/KollektionsErfasser.jar). With this version several queries in a row are possible.

28.8.2008:


-  Because delicious restructured, i changed the feasability study. View it (in german) as [doc](http://www.urfer.li/adrian/master/Machbarkeitsstudie.doc) or as [pdf](http://www.urfer.li/adrian/master/Machbarkeitsstudie.pdf).
-  The newest version of [KollektionsErfasser](http://http://www.urfer.li/adrian/master/KollektionsErfasser.jar)

30.7.2008:


-  The prototype of the masterreport as [doc](http://www.urfer.li/adrian/master/Social_Tagging_Masterreport.doc) or [pdf](http://www.urfer.li/adrian/master/Social_Tagging_Masterreport.pdf)

28.7.2008:


-  The newest version of [KollektionsErfasser](http://www.urfer.li/adrian/master/KollektionsErfasser.jar)

24.7.2008:


-  Update of the "Pflichtenheft" 

21.7.2008:


-  About downloading metadata

There seems to be <b>a time limit</b> and <b>a download limit</b> (125 MB). The attempt to get only the 50 first users for every website reduces the download size. That way i hoped to get more usersAndTags sites in one phase. But still after aproximatley 300 files the delicious service shuts down. The size of the downlaoded metadata was less than 10 MB. 


-  About IP adress blocking

Sometimes when delicious blocks the IP adress, a query is still possible. But the allUsersAndTags site for the resulting hits are not available. This means there is no access to users and their tags who bookmarked these results.

15.7.2008:


-  New and updates of recent documents are available (see below).

11.7.2008:


-  Three new documents in german describing the master project more precisly are available.

30.6.2008:


-  A new document in german about Soekia 2.

6.6.2008:


-  Three documents describing the Use Cases and the GUI are available under "Documents" (see below).
-  A documentation about the current system architecture is also available.

25.3.2008:

Relevant java classes:

-  [DeliciousQuery.java](http://www.urfer.li/adrian/master/java/DeliciousQuery.java). This is the main class to interact with del.icio.us. 
-  [InternetFileDownload.java](http://www.urfer.li/adrian/master/java/InternetFileDownload.java). Download a website from a URL. This class contains the method to set the filename (more precise: the absolute filepath)
-  [HelperClass.java](http://www.urfer.li/adrian/master/java/HelperClass.java). This class implements a method to add Strings (alphabetically) in a fast way (O(log(N)) to an ArrayList.

For ranking purposes, the number of how many people saved a certain website could be used. del.icio.us doesn't rank this way. The problem with this aproach is the manipulability. One real person could open various accounts and save one website with each account.

15.3.2008:

The URL-pattern to get websites for a query is

-  "http://del.icio.us/search/?setcount=(10|20|50|100)&all=(keywords separated by %20)&page=(an integer)". [Example query with keywords: simple test](http://del.icio.us/search/?setcount=100&all=simple%20test&page=1) (Takes several seconds)

Problems/Limitations: 

-  No matter how many results the query yields, a maximum of 1000 websites (URLs) can be downloaded. 
-  To get all tags can be problematic in case to many users saved this website (sometimes a hit is saved by over 10000 people).
-  To solve this problem, del.icio.us offers two possibilites: View the first 50 users or view all users.
[Example with 50](http://del.icio.us/url/a1c9db5095b262fefb4f75279921858e) | [Example with all](http://del.icio.us/url/a1c9db5095b262fefb4f75279921858e?all) 

1.3.2008:

Delicious consists of several views from which two are appropriate to download websites and all their tags. "http://del.icio.us/username" lists the latest websites of this user.  
[Example](http://del.icio.us/julian)
Some of these websites are saved by other people if there is a "saved by" link. This link plus "?all" at the end shows all people and their tags for this website.
[Example](http://del.icio.us/url/5a3f4fea62af589171709f176114c025?all)

Websites (the URLs) can be read with Java Stream Classes. 

Every file format can be downloaded from the internet. Although some formats like images/pdfs/movies take a long time.
 
<br clear=all>

---

Documents &rArr;
[Machbarkeitsstudie als doc (5. November 08 Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/Machbarkeitsstudie.doc) 
[Machbarkeitsstudie als pdf (5. November 08 Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/Machbarkeitsstudie.pdf) 
[Social Tagging Projektbeschrieb als doc (15. July 08 Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/Social_Tagging_Projektbeschrieb.doc)
[Social Tagging Projektbeschrieb als pdf (15. July 08 Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/Social_Tagging_Projektbeschrieb.pdf)
[Social Tagging Pflichtenheft als doc (24. July 08 Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/Social_Tagging_Pflichtenheft.doc)
[Social Tagging Pflichtenheft als pdf (24. July 08 Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/Social_Tagging_Pflichtenheft.pdf)
[GUI für den KollektionsErfasser als doc (15. July 08 Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/GUI_fuer_den_KollektionsErfasser.doc)
[GUI für den KollektionsErfasser als pdf (15. July 08 Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/GUI_fuer_den_KollektionsErfasser.pdf)
[The current masterreport as doc (15. July 08 Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/Social_Tagging_Masterreport.doc)
[The current masterreport as pdf (15. July 08 Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/Social_Tagging_Masterreport.pdf)
<br>

---
Most important Classes:<br>
<br>
ch.swisseduc.kollektionserfasser &rArr; 
[KollektionsErfasser.java (Autor: Mathias Dreier, changed by Adrian Urfer)](http://www.urfer.li/adrian/master/java/KollektionsErfasser.java)

ch.swisseduc.kollektionserfasser.tag &rArr; 
[DeliciousQuery.java (Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/java/DeliciousQuery.java)

ch.swisseduc..kollektionserfasser.util &rArr;
[HelperClass.java (Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/java/HelperClass.java)
[IOClass.java (Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/java/IOClass.java)
[WebDownload.java (Autor: Adrian Urfer)](http://www.urfer.li/adrian/master/java/WebDownload.java)
<br clear=all>

---

<strong>Meeting with Werner / Diana</strong>

General: Search for 1 to 10 single words. Something like "hello world" as one word isn't allowed.

Research: 

-  Two groups of people search for the same websites. One group uses the index approach, the other one the tag approach.
-  Who is faster and how do they search? 
-  A tag search should show the ranking of all documents containing any word or words. The ranking must be the same as in del.icio.us. The rank of a site is the position of this site in a del.icio.us query. After N queries, there will be N sites with rank 1, N sites with rank 2, N sites with rank 3, ...
-  How do people tag websites and how many tags are necessary?

<br clear=all>

---

<strong>Problem with the official delicious java API</strong>

This package only provides methods to get data from single delicious users if we know their passwords.
 
<br clear=all>

---
