---
Title: Local rebinding
---
#Local rebinding
The problem of local rebinding, as tackled by ClassBox, is the following:

```
B extends A.
A2 extends A.
```

Now, we would like to have a class that has the behvior of B and A2. This is not possible, so we need to create

```
B2 extends B.
```

, which will contains a lots of code duplicated from A2.

With ClassBox, A can be locally modified to yield B, and A2 has then automatically the behavior of B2.

This is also possible with ActiveContext, but trickier.

The ideas is that under context 1, the hierachy is like following:

```
A2 extends A.
```

And under context 2, the hierarchy is like following:

```
A2 extends B extends A.
```

This effectively achieved the same behavior as with ClassBox. 

This is possible if class and superclass are accessible during the transformation: instances of A are transformed to be instances of B, and the superclass of A2 is rewired to be B.
