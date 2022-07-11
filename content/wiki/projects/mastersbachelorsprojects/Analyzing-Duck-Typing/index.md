---
Title: Analyzing Duck Typing
---

A method is *duck-typed* if it has the same signature as another method, neither of which overrides a similarly typed method of a common parent.

Example: #value: is understood in Pharo Smalltalk by both blocks and symbols.

See [Wikipedia article on Duck Typing](http://en.wikipedia.org/wiki/Duck_typing)

A simple algorithm to identify which methods are newly introduced by each class in the Pharo Smalltalk system shows that over 10,000 methods are introduced at the roots of separate hierarchies. Are all of these methods truly duck-typed?

This project would dig deeper into duck typing in Smalltalk (or another dynamically typed language) to determine how prevalent duck typing really is, and how it is used in practice.

#Research Questions

-  Is it possible to accurately detect duck typing by static analysis? (What is the accuracy of naive approaches? How common are false positives?)
-  How is duck typing used idiomatically? (Are there common use cases?)
-  How frequently is duck typing implemented by code clones?
-  How often can duck typing be subsumed by established language mechanisms? (Eg aspects, mixins/traits, extension methods?)

Contact: [Oscar Nierstrasz](%base_url%/staff/oscar), [Nevena Milojković](%base_url%/staff/Milojkovic)
