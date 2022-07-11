---
Title: Test/Document framework for Quality Rules
---

Quality rules can be useful to detect issues in a source code. For example, a rule can suggest not to write:

```if (boolCheck == true) { ... }
```

as it is a bad practice to compare a boolean value with the true literal.

Now, such rules also need automated tests. This is slightly complicated, as one has also to create code snippets with good and bad code and then test whether the rule detects issues in the bad code fragments and does not detect them in the good ones.

Documentation is another common software development practice which quality rules should follow. And if we already have these good and bad code examples, why not include them in the documentation to better explain the intention for the quality rule.

The goal of this project is to develop a framework where a developer is only supposed to provide code snippers for the rule, and the framework will use them for testing and documentation generation. For example, a developer should only provide the following examples:

Good:
```if (boolCheck) {
...
}
```

Bad:
```if (boolCheck == true) {
...
}
```

and the framework will automatically test the rule on the snippets and include them in the documentation.


The project is going to be done in [Pharo](http://pharo.org) because of its reflective capabilities and availability of related projects as [GT Examples](http://gtoolkit.org/doc/Examples/examples.html) 

#Contact
[Yuriy Tymchuk](%base_url%/staff/YuriyTymchuk)
