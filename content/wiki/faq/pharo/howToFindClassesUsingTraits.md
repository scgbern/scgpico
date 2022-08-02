---
Title: How do I find which classes use traits?
---
#How do I find which classes use traits?
- **Q How do I find which classes use traits?**
- **A** Smalltalk allClasses select: [:each | each hasTraitComposition ]

