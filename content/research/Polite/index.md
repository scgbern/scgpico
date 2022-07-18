---
Title: Polite Smalltalk
---
#Polite Smalltalk
<div style="text-align:right">
<i>We are nothing, if not polite</i> </br>
Don Ysidro, B.H. Rogers
</div>


---
<div style="display:table-cell; vertical-align:middle; text-align:center;">
<img style="width:300px" src="%assets_url%/files/6a/qc8joq30izl4errsthftdoapprklwa/BowBW.png">
</div>

---


Since every polite person talks in sentences, Polite Smalltalk is a programming language which encourages developers to name their method names using what we call ``sentence case identifiers\'' &mdash; an identifier naming convention which assumes that method names are most of the time multi-word sentences. After all a method in a class denotes an action that the objects of the class can carry which usually best expressed as a sentence not as a sometimesVeryLongCamelcaseIdentifier.

However, in order to replace identifiers with sentences, we need to make sure that our language grammar allows the code to be parsed unambiguously. A snippet which in a popular programming language would be written as:

```
protagonist = new PoliteHero('Hiro Protagonist');
protagonist.attack(theAntihero, theBigSword);
```

is written in Polite like:

```
protagonist := Polite Hero, named: 'Hiro Protagonist'.
protagonist, attack: (the antihero) with: (the big sword). 
```

Or take for example, the implementation of the merge sort method of the merge sort algorithm fame in Polite: 

```
merge sort: a
    if: [size of: a == 1] then: [^a]

    sorted left = merge sort: a, first half.
    sorted right = merge sort: a, second half.
    ^ merge: (sorted left) with: (sorted right).
```

In our opinion a syntax like the one of Polite will encourage people to write nicer and more readable code. And since we spend much more time reading existing code than writing new code, this might make everybody happier in the long run.

Finally, Polite is a modified Smalltalk; so all the power, and meta-power of that language is available to the Polite programmer.

The source code of the project is hosted in the ![PoliteSmalltalk GitHub repo](https://github.com/mircealungu/PoliteSmalltalk).

#Installation

The easiest way to try out Polite is to [download it from Zenodo](https://zenodo.org/record/61578#.WDhvaqIrK9s)

#Publications
[Papers](%assets_url%/scgbib/?query=politesmalltalk&filter=Year)
