---
Title: Piccola
---
#Piccola
Piccola is a *small*, *pure* language for building applications from *software components*. Piccola is small in the sense that its syntax is tiny, and it is pure in the sense that it provides only compositional features &mdash; computation is performed entirely by components of the host programming language. 
The semantics of Piccola is defined in terms of a process calculus, an extension of Milner's pi calculus in which values communicated are *forms*, rather than tuples. A "form" is essentially an extensible nested record which also serves as a namespace in which expressions may be evaluated. This simple mechanism is responsible for much of the expressive power of Piccola.

![jpiccola.png](%assets_url%/files/9c/kiudzb5f9ftk7ehbejnjy138l2qnfl/jpiccola.png)

#Downloads
There currently exist two experimental implementations of Piccola: *JPiccola* is used to compose Java components, and *SPiccola* can compose components written in Squeak.

##JPiccola:

- Download the [JPiccola 3.7c distribution](%assets_url%/download/piccola/JPiccola3.7c.zip) (~800KB zip file &#8212; includes JPiccola jar file, JPiccola Guide (pdf), and demo scripts
- Download external jar libraries (copy these to the extlib folder of the download, if you do not already have newer copies)
-  Browse or [download](%assets_url%/download/piccola/jpiccola3.7c-src.zip) the JPiccola source files (cvs repository)

##SPiccola:

- Download [SPiccola 0.7](%assets_url%/download/piccola/SPiccola07.zip) (7MB zip &#8212; for [Squeak](http://www.squeak.org/) 2.7 or later)

Please be aware that the syntax of Piccola has evolved over time. The current download implements the *Piccola 3* syntax. Older papers may use *Piccola 2* or *Piccola 1* syntax.

#Publications

For a brief introduction to Piccola, see the paper [Applications = Components + Scripts &mdash; A tour of Piccola&quot;](%assets_url%/scgbib/?query=Ache01a&filter=Year) (This paper uses the Piccola 2 syntax.) For a more thorough and up-to-date overview, see the [JPiccola Guide](%assets_url%/scgbib/?query=Nier03a&filter=Year) (included in the JPiccola distribution).

There are several [PhD theses](%assets_url%/scgbib/?query=piccola+scg-phd&filter=Year), [Diploma theses](%assets_url%/scgbib/?query=piccola+scg-msc&filter=Year) and [Student projects](%assets_url%/scgbib/?query=piccola+scg-ip&filter=Year) on Piccola.

The semantics of Piccola are described in the PhD thesis of Franz Achermann, *[Forms, Agents and Channels &mdash; Defining Composition Abstraction with Style](%assets_url%/scgbib/?query=Ache02a&filter=Year)*. Much of the motivation for introducing forms is explained in the paper, [Explicit Namespaces](%assets_url%/scgbib/?query=Ache00b&filter=Year).
