---
Title: Accepted Papers
---
#Accepted Papers
<big>&rarr; Download all [Suite 2010 PREPRINTS](%base_url%/download/suite/suite2010-preprints.zip) in one ZIP archive!</big>

### Towards Integrating E-Mail Communication in the IDE

-  Alberto Bacchelli - Università della Svizzera Italiana (University of Lugano), Switzerland
-  Michele Lanza - Università della Svizzera Italiana (University of Lugano), Switzerland
-  Vitezslav Humpa - Università della Svizzera Italiana (University of Lugano), Switzerland
Software developers spend a large part of their working time using an
Integrated Development Environment (IDE). However, IDEs are usually
disconnected from the means of communication programmers use to interact and
discuss with other co-workers. Because of this, many context switches are
required and the existing connection between source code artifacts and
artifacts generated from recorded communications, such as e-mails, cannot be
effectively put to good use.
In this paper, we introduce Remail, an Eclipse plugin to integrate e-mail
communication in the IDE. It allows developers to seamlessly handle source
code entities and e-mails concerning the source code. We present our
preliminary work on Remail that allows linking source code classes to the
e-mails in which they are discussed, thus providing an updated and effective
documentation.

### Facilitating the Comparison of Software Retrieval Systems through a Reference Reuse Collection

-  Oliver Hummel - University of Mannheim, Germany
Although the idea of component-based software reuse has been around for more
than four decades the technology for retrieving reusable software artefacts
has grown out of its infancy only recently. After about 30 years of basic
research in which scientists struggled to get their hands on meaningful
numbers of reusable artifacts to evaluate their prototypes, the "open source
revolution" has made software reuse a serious practical possibility. Millions
of reusable files have become freely available and more sophisticated
retrieval tools have emerged providing better ways of searching among them.
However, while the development of such systems has made considerable progress,
their evaluation is still largely driven by proprietary approaches which are
all too often neither comprehensive nor comparable to one another. Hence, in
this position paper, we propose the compilation of a reference collection of
reusable artifacts in order to facilitate the future evaluation and comparison
of software retrieval tools.

### Enhancing Static Source Code Search With Dynamic Data

-  Reid Holmes - University of Washington, United States
-  David Notkin - University of Washington, United States
Developers frequently try to locate references to particular program elements
within their systems; however, these queries often return an overwhelming
number of results. The result sets for these queries tend to be large because
integrated development environments locate matches using static search
approaches; however, the developer may be more interested in which references
actually happened for a particular execution, instead of which references
could happen in a hypothetical execution. We posit that dynamic search
approaches can complement customary static search approaches in the same ways
dynamic analysis complements static analysis. Specifically, in this paper, we
hypothesize that filtering static reference queries with dynamic trace data
can reduce the number of results a developer must consider when performing a
query, helping them to focus on a subset of the static query results. To test
our hypothesis, we filtered the results of the Eclipse find references query
with dynamic trace data for three different projects; our preliminary evidence
demonstrates that dynamic trace data can be used to effectively filter the
result sets of static source code queries.

### More Archetypal Usage Scenarios for Software Search Engines

-  Werner Janjic - University of Mannheim, Germany
-  Oliver Hummel - University of Mannheim, Germany
-  Colin Atkinson - University of Mannheim, Germany
The increasing availability of software in all kinds of repositories has
renewed interest in software retrieval and software reuse. Not only has there
been significant progress in developing various types of tools for searching
for reusable artifacts, but also the integration of these tools into
development environments has matured considerably. Yet, relatively little is
known on why and how developers use these features and whether there are
applications of the technology that go beyond classic reuse. Since we believe
it is important for our fledgling community to understand how developers can
benefit from software search systems, we present an initial collection of
archetypal usage scenarios for them. These are derived from a survey of
existing literature along with novel ideas from ongoing experiments with a
state of the art software search engine.

### A Trustability Metric for Code Search based on Developer Karma

-  Florian Sebastian Gysin - Software Composition Group, University of Bern, Switzerland
-  Adrian Kuhn - Software Composition Group, University of Bern, Switzerland
The promise of search-driven development is that developers will save time and
resources by reusing external code in their local projects. To efficiently
integrate this code, users must be able to trust it, thus trustability of code
search results is just as important as their relevance. In this paper, we
introduce a trustability metric to help users assess the quality of code
search results and therefore ease the cost-benefit analysis they undertake
trying to find suitable integration candidates. The proposed trustability
metric incorporates both user votes and cross-project activity of developers
to calculate a “karma” value for each developer. Through the karma value
of all its developers a project is ranked on a trustability scale. We present
JBender, a proof-of-concept code search engine which implements our
trustability metric and we discuss preliminary results from an evaluation of
the prototype.

### Searching and Using External Types in an Extensible Software Development Environment

-  Alexander Paar - University of Pretoria, Department of Computer Science, South Africa
In many software projects, XML Schema Definition data types and ontological
concept descriptions coexist with programming language class hierarchies. 
However, only programming language type definitions are fully integrated into
today's software development environments.  Support for external type systems
is spotty.  For programmers, it is particularly tedious to search type
definitions in XML schema files and OWL ontologies, to browse external type
hierarchies, to investigate external type members, and to analyze and
comprehend the use of external type definitions in program code.  In this
work, it will be argued that improved search capabilities are required to ease
the use of schema and ontology languages.  Difficulties of searching type
definitions in project workspaces will be indicated.  An extensible software
development environment will be outlined that facilitates the use of schema
and ontology languages in C# programs and makes XML data types and OWL concept
descriptions first-class citizens of the source code editor.

### Behavior Model Based Component Search: An Initial Assessment

-  Carlo Ghezzi - Politecnico di Milano, Italy
-  Andrea Mocci - Politecnico di Milano, Italy
We focus on the problem of searching components based on semantic
queries on their provided interface. Although semantics-based search
has long been advocated as a key enabler in the context of
component-based software development and, more recently,
service-oriented computing, no practical and scalable approach has been
proposed yet.
This paper presents a promising model-based search technique for
interface behaviors based on operational specifications, called
behavioral equivalence models (Bems). Semantic queries are
expressed equationally, following an algebraic specification
style. The search engine tries to match specifications against
queries. This can be done quite efficiently by encoding Bems
into relational models and queries into relational logic formulae,
whose satisfiability is checked with the SAT-based constraint solver KodKod.
We can report on an initial very promising assessment of the proposed
technique, which has been applied to searching components in Java
libraries providing container functionalities.

### Fostering Synergies &mdash; How Semantic Web Technology could influence Software Repositories

-  Michael Würsch - Department of Informatics, University of Zurich, Switzerland
-  Gerald Reif - Department of Informatics, University of Zurich, Switzerland
-  Serge Demeyer - Department of Informatics, University of Zurich and Lab On Reengineering, University of Antwerp, Switzerland
-  Harald Gall - Department of Informatics, University of Zurich, Switzerland
The state-of-the-art in mining software repositories stores software artifacts
from various sources into monolithic relational databases. This puts a lot of
querying power in the hands of the software miners, however it comes at the
cost of enclosing the data and hamper cross-application reuse. In this paper
we discuss four problem scenarios to illustrate that Semantic Web technology
is able to overcome these limitations. However, it requires that the software
engineering research community agrees on two prerequisites: (a) a common
vocabulary to talk about software repositories &mdash; an ontology; (b) a strategy
for generating unique and stable references to all software artifacts inside
such a repository &mdash; a Universal Resource Identifier (URI).

### Searching Across Paths

-  Thomas LaToza - Carnegie Mellon University, United States
-  Brad A. Myers - Carnegie Mellon University, United States
Observations of developers indicate that developers try to answer a variety of
questions by searching across control flow paths through a program for
statements matching search criteria. We believe that tools that better support
this activity can help developers answer these questions more easily, quickly,
and accurately.

### Towards Query Formulation and Visualization of Structural Search Results

-  Oleksandr Panchenko - Hasso Plattner Institute for Software Systems Engineering, Germany
-  Arian Treffer - Hasso Plattner Institute for Software Systems Engineering, Germany
-  Alexander Zeier - Hasso Plattner Institute for Software Systems Engineering, Germany
Source code search goes far beyond simple textual search. One possibility of
improving code search is the utilization of structural information in form of
abstract syntax trees (ASTs). However, developers usually work with the
textual representation of source code and, thus, have difficulties in
expressing their queries as fragments of abstract syntax trees and in
interpreting
the results. This paper addresses assistance of query composition and search
result visualization. Query formulation is considered to be an iterative
process. After one query is run, the AST vertices neighbored to the result
vertices are analyzed to propose refinement options for the next query.
Search results are visualized in a tree view which aggregates all matches in a
compact way instead of showing a small number of ranked matches.

### Searching API Usage Examples in Code Repositories with Sourcerer API Search

-  Sushil Bajracharya - University of California Irvine, United States
-  Joel Ossher - University of California Irvine, United States
-  Cristina Lopes - University of California Irvine, United States
We present Sourcerer API Search (SAS), a search interface to find API usage
examples in large code repositories. SAS facilitates find- ing API usage
examples by providing three unique features: (i) code snippets view for each
result that shows the portions of code where APIs are used; (ii) Tag-cloud
view of popular words to facilitate query reformulation, and (iii) filtering
results using APIs to narrow search results. Furthermore, SAS uses a code
index where each code entity is indexed with terms not only found in the
entity but also in other entities having similar API usage. These features
make SAS a novel search interface to find API usage examples in code
repositories.

### Immediate Search in the IDE as an Example of Socio-Technical Congruence in Search-Driven Development

-  Adrian Kuhn - SCG, University of Bern, Switzerland
Search-driven development is mainly concerned with code reuse but also with
code navigation and debugging. In this essay we look into the socio-technical
issues of search-driven navigation in the IDE. We consider Smalltalk-80 as an
example of a programming system with search-driven navigation capabilities and
explore its socio-technical factors. We present how immediate search results
lead to a user experience of code browsing rather than one of waiting for and
clicking through search results. We explore the socio-technical consequences
of immediate search, ie unification of tasks and breakpoints with method
calls, which leads to simpler and more extensible development tools.
Eventually we conclude with remarks on the socio-technical congruence of
search-driven development.
