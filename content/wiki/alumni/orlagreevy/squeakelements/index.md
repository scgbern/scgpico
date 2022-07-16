---
Title: SQUEAK Elements
---
#SQUEAK Elements
<b>Display a list</b>

html
      orderedList: [self aCollection do: [:each | html listItem: each ]].
