---
Title: SmaCC pops up an annoying "silence not found in the Sound library" when I click on the tabs -- how do I get it to stop?
---

- **Q SmaCC pops up an annoying "silence not found in the Sound library" when I click on the tabs &mdash; how do I get it to stop?**
- **A** Edit SampledSound class>>soundNamed: and comment out the self inform:
