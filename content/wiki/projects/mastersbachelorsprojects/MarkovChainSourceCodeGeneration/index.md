---
Title: Markov Chain Source Code Generation
---

For a down to earth explanation on what a Markov Chain is see http://setosa.io/blog/2014/07/26/markov-chains/index.html

The idea of the project is to see if we can use Smalltalk code snippets to form a Markov Chain that would output syntacticly valid, semantically random Smalltalk source code that can be used to test a hypothetical smalltalk compiler. 

We already implemented a framework for working with Markov chains in Pharo Smalltalk, where users can define a set of states(and an action for every state), provide the transition matrix between the states and the framework will jump from state to state according to the transition matrix and execute the action for every state.

The main tasks of the project are as follows:

1. Identify states of the Markov chain
2. Calculate the transition matrix based on actual Smalltalk source code
3. Implement actions for each state so that the output is 
