---
Title: Cells
---

<big><b>CELL</b></big> is a language model where objects are composed of smaller fragments. An additional layer of abstraction <i>below</i> the level of objects is introduced. The key motivation is to provide better support for language features that transcend objects. 

The basic building blocks of the CELL model are object fragments, which are called <i>cells</i>. Objects are built up from groups of cells with delegation relationships between them. Cells themselves are simple structures, mainly consisting of 1) a lookup function, 2) a delegation pointer, and 3) an (optional) payload. 

The CELL model is message-oriented, so all interaction between cells is based on message sending. Messages and message replies are also cells, thus "everything is a cell". Cell composition can be used to realize various forms of method dispatch, including novel modularization mechanisms and extension points such as the <i>method_missing</i> hook often found in dynamic languages.
 
![Hello.png](%assets_url%/files/1c/nwxqmtycxskh2njtiy0ayz6wo4zwei/hello.png)

<small><p><b>Figure:</b> A class-based "Hello World" made of Cells: (from top-left to bottom-right) H1 is the metaclass, H2 provides class-behavior, H3 is the class, H4 provides instance-behavior, and H5 is an instance of the class. Boxes represent cells, arrows indicate delegation links or reference pointers.</p></small>


---

# Publications

[Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn) and [Oscar Nierstrasz](%base_url%/staff/oscar), ["Composing New Abstractions From Object Fragments"](http://www.iam.unibe.ch/~akuhn/d/Kuhn-2008-VMIL-Cell.pdf), [VMIL 2008](http://www.cs.iastate.edu/~design/vmil).

# Download

A prototype of CELL is available [on SCG subversion](https://www.iam.unibe.ch/scg/svn_repos/Sources/Cells/)&mdash;have fun!

<p style="font-size: smaller;">Dependencies: [ch.akuhn.util](https://www.iam.unibe.ch/scg/svn_repos/Sources/ch.akuhn.util/) and [JExample](%base_url%/research/jexample).</p>

&nbsp;

See also [delMDSOC](http://www.swa.hpi.uni-potsdam.de/misc/#delmdsoc) by Hans Schippers and the HPI guys, from which parts of the CELL implementation had been derived.

<script>document.getElementsByTagName("h1").item(0).innerText="Everything is a Cell"</script>
