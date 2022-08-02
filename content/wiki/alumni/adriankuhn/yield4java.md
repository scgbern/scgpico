---
Title: Yield 4 Java
---
#Yield 4 Java
# Generator.java &ndash; Extending Java with Yield

The yield statement in Ruby, Python and C# makes it very convenient to write complex iterators. As this has been missing in Java so far, here is a class that you can subclass to create generators.

Generator implements an iterator that yields its values one at a time. Subclasses must define a method called <code>#run()</code> and may call <code>yield(T)</code> to return values one at a time.

The generator ends when it reaches a return statement or the end of the method. On the other hand, an generator may run forever and thus yield an infinite sequence (see Example 1 for an example).

Please beware that calling <code>#hasNext()</code> on the generator (and thus any use in a for-each loop) provokes a lookahead of one value. Therefore you cannot repeatedly yield the same object, but rather, you must clone the value on each yield statement (see Example 3 for an example). 

NB: this class makes use of Threads, you might want to double-check its source code before using it in a multi-threaded application.

<b>Example 1:</b> Yields an infinite sequence of fibonacci numbers.

<div style="background: beige; border: 1px solid peru;">

```
    Generator&lt;Integer&gt; fibonacci = new Generator&lt;Integer&gt;() {
        &#64;Override
        public void run() {
            int a = 0, b = 1;
            while (true) {
                a = b + (b = a);
                yield(a); 
            }
        }
    };
    
    for (int x : fibonacci) {
        if (x > 20000) break;
        System.out.println(x);
    }
```

</div>

<b>Example 2:</b> Yields all characters of the string "Hello, Worlds!".

<div style="background: beige; border: 1px solid peru;">

```
    Generator&lt;char&gt> hello = new Generator&lt;char&gt;() {
        &#64;Override
        public void run() {
            String str = "Hello, Worlds!";
            for (int n = 0; n < str.length; n++) {
                yield(str.atChar(n));
            }
        }
    };
    
    for (char each : hello) {
        System.out.println(each);
    }
```

</div>

<b>Example 3:</b> Yields all perutations of an array.

<div style="background: beige; border: 1px solid peru;">

```
    public static &lt;T&gt; Generator&lt;T\[]&gt; permute(final T\[] a) {
        return new Generator&lt;T\[]&gt;() {
            &#64;Override
            public void run() {
                permute(a.length - 1);
            }
            private void permute(int n) {
                if (n == 0) yield(a.clone());
                else for (int k = n; k >= 0; k--) {
                    swap(n,k);
                    permute(n - 1);
                    swap(n,k);
                }
            }
            private void swap(int n, int m) {
                T temp = a\[n];
                a\[n] = a\[m];
                a\[m] = temp;
            }
        };
    }
```

</div>

## Download


-  [http://www.iam.unibe.ch/~akuhn/Generator.java](http://www.iam.unibe.ch/~akuhn/Generator.java)

&nbsp;

&nbsp;

---

Contact &ndash; <script>document.write(String.fromCharCode(60, 97, 32, 104, 114, 101, 102, 61, 34, 109, 97, 105, 108, 116, 111, 58, 97, 107, 117, 104, 110, 64, 105, 97, 109, 46, 117, 110, 105, 98, 101, 46, 99, 104, 34, 62, 97, 107, 117, 104, 110, 64, 105, 97, 109, 46, 117, 110, 105, 98, 101, 46, 99, 104, 60, 47, 97, 62));</script>
