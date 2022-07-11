---
Title: How do I define extension methods?
---

- **Q How do I define extension methods?**
- **A** Suppose you want to extend Number with Number>>chf but have Monticello recognize it as being part of my Money package.
Put it in a method-category named \*money.
MC gathers all *extension* methods that are in categories named like \*package.
