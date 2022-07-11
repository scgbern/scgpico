---
Title: Wide Classes
---

If you browse to <code>WideClass</code> and <code>WideClassTest</code> on [How to access the SCG visualworks store](%base_url%/wiki/howtos/howtoaccessscgstore) there is a simple implementation of wide classes. The idea of wide classes is based on work by Manuel Serrano, please refer to his [ecoop paper on wide classes](http://www.iam.unibe.ch/~scg/cgi-bin/scgbib.cgi/abstract=yes?Serr99a). A wide class is a class that can become larger when needed and shrink again later. As we have tons of empty inst vars in [Moose](http://moose.unibe.ch) models, that might help us to save some megas on large case studies.


---

## How does it work?

Sending #wide:<! >put: to some object will install an instance var and accessors on the receiving instance.

```	o := Object new.
	o widen: 'foo'.
	o foo: #whatever.
	o foo 
```

and even better, if you implement in a class #foo and #foo: as follows

```	foo ^nil
```

```	foo: arg self wide: #foo put: arg
```

upon first execution of #foo: the foo inst var is installed in a per-instance base and both methods get properly overriden with simple accessors. Wide classes and objects should work with the inspector as well. There is no DNU hack anywhere, thanks to [Travis](http://www.cincomsmalltalk.com/userblogs/travis/blogView) for pointing me to the right implementation.

```	self changeClassTo: Array.
	self become: (self copyWith: nil).
	self changeClassTo: wideclass
```
