---
Title: How do I programmatically create a new Pier component?
---

- **Q How do I programmatically create a new Pier component?**
- **A** As above, but:
```file := (PRFile named: self pierName)
	filename: self pierName;
	mimetype: (MAFileModel mimetypeFor: (self pierName copyAfterLast: $.));
	yourself.
parent addChild: file.
```
*To be turned into a concrete example ... [on](%base_url%/staff/oscar)*
