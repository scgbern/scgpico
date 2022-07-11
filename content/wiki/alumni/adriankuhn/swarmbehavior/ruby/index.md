---
Title: Ruby
---

Swarm Behavior in Ruby, a quick & dirty hack...

&nbsp;

``` class Array
   def method_missing(symbol, \*args)
     # todo, implement according &#58;respons_to? method
     gm = most_common_type.group_method(symbol)
     if gm
       gm.bind(self).call(\*args)
     else
       super symbol, \*args
     end
   end
   def most_common_type
     moco = self.first.class
     self.each do | it |
       moco = moco.superclass until moco >= it.class
       break if moco == Object
     end
     return moco
   end
 end
 
 class Class
   def group_method(symbol)
     @gms ||= {}
     @gms\[symbol]
   end
   def define_group_method(symbol, &proc)
     @gms ||= {}
     Array.send(&#58;define_method, symbol, &proc)
     @gms\[symbol] = Array.instance_method(symbol)
     Array.send(&#58;remove_method, symbol)
   end
 end
 
 Numeric.define_group_method(:sum) { "42" }
 
 p \[ 1, 222222222222222222, 3.0, 4 ].sum()
 
 p \[ 1, nil, 2 ].sum()
```
