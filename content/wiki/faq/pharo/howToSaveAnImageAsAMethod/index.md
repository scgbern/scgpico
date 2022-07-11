---
Title: How do I save an image file as a constant method?
---

- **Q How do I save an image file as a constant method?**
- **A** Just drop the image file onto the Pharo image, inspect it, and print 'self form storeString'.
The result will (should) be usable to recreate the image.
For example (self here is the ByteString):
```(SketchMorph withForm: (Compiler evaluate: self)) openInWorld
```

