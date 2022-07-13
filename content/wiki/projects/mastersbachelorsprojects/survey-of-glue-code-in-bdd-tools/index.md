---
Title: Survey of glue code in BDD tools
---

#Idea
There are a lot of Behavior Driven Development (BDD) tools available in practice, see the list below. 
To involve non-technical stakeholders in specifying requirements, these tools encourage writing behavior specification as constrained natural text.
Some of them allow specification as plain text (for example in *Given...When...Then* format, i.e., using Gherkin syntax).

| | |
|---|---|
|<img style="text-align:center" src="http://scg.unibe.ch/download/Nitish/bdd_scenario.png" />|

It is then connected through a 'glue' code or fixture to the underlying implementation.

| | |
|---|---|
|<img style="text-align:center" src="http://scg.unibe.ch/download/Nitish/glue_code_example.png" />|
 
On the other hand, few BDD tools allow specification as a code with added annotations in order to reduce re-writing of natural language specifications. 

| | |
|---|---|
|<img style="text-align:center" src="http://scg.unibe.ch/download/Nitish/fixture_annotations.png" />|

The glue code serves as a bridge from higher-level specification to the implementation level details.
The characteristics of such glue code and annotations are not yet studied. 
It is also not clear how much glue code is auto-generated and how much must be written manually.
Researchers have recently published two datasets ([dataset 1](https://danielcalencar.github.io/papers/Aidan-etal_MSR_2019_BDD.pdf) and [dataset 2](https://www.sciencedirect.com/science/article/abs/pii/S095058492030063X))  that contain open-source projects that use BDD tools. Projects from these datasets can be studied to analyze the characteristics of the glue code, as the original authors did not look into it.  

#Popular BDD tools 
Student can take a look at the following BDD tools to familiarise with the core ideas behind these individual tools:

- Cucumber
- FitNesse
- JBehave
- Concordion
- SpecFlow
- Spock
- RSpeck
- MSpec
- LightBDD
- ScalaTest
- Specs2
- JGiven
- phpspec
- Gauge

#Hypothesis
If the amount of glue code, in case, must be written manually, is equal to or greater than the amount of the actual implementation code, then the approach is wrong. 
It means an added amount of work for developers because non-technical stakeholders may not be experts for writing such glue code.

#Research questions

- What are the common and unique characteristics of the BDD specifications across numerous BDD tools?
- What parts of specifications go to glue code? How often? In which tools?
- What does glue code connect to
- What are the characteristics of the glue code? Any commonalities across different tools? What is specific to Cucumber?

#Tasks

- Analyzing a list of BDD tools (by reading documentation and trying manually) to characterize fixture or glue code (how it is written, what is auto-generated etc.)
- Analysis of two existing datasets ([dataset 1](https://danielcalencar.github.io/papers/Aidan-etal_MSR_2019_BDD.pdf) and [dataset 2](https://www.sciencedirect.com/science/article/abs/pii/S095058492030063X)) to see the evidence about the glue code characteristics in practice
- (if necessary) Combining two datasets to compile a list of Cucumber (one of the popular BDD tools) related projects, removing duplicates
- Analysis of resulting Cucumber related projects to understand the characteristics of glue code

**This seminar project shall be extended as a bachelor/master thesis. The seminar will focus on Cucumber, the thesis will cover in-depth analysis of other included BDD tools.**

#Contact 
[Nitish Patkar](%base_url%/staff/NitishPatkar)
