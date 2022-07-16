---
Title: How do I convert a collection of characters to a String?
---
#How do I convert a collection of characters to a String?
- **Q How do I convert a collection of characters to a String? E.g. 'hello world' asSet ...**
- **A** (WriteStream with: String new) nextPutAll: 'hello world' asSet; contents

