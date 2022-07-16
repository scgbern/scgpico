---
Title: Using Assertions as Poor Mans Exceptions
---
#Using Assertions as Poor Mans Exceptions
In short, assertions are exceptions done right.

Against all best practice and advice by style gurus, I consider (ab)using assertions as simple exceptions good style. Programming again in Java recently, I adopted the practice of using assertions as poor man's exception. Assertions have certain advantages over exceptions


-  less syntatic clutter
-  less typing clutter

First compare

```
    assert condition : message;
```

to

```
    if (!(condition)) {
        throw new CustomException(message);
    } 
```

Secondly, empirical studies (Bruno Cabral, Paulo Marques, "Exception Handling: A Field Study in Java and .NET," ECOOP 2007) have shown that catches clauses almost never guard against specific exception, but rather use a limited set of exception types only: <code>Exception, RuntimeException, Error, IOException, SQLException</code>. 

If in your and your client's code nearly all try-catch statements guard against abstract exception types only&mdash;then, why throw specific types in the first place anyway?

NB: when ever you use assertions as exceptions, you should make sure that they are always turned on. Either use a compiler plugin to [force assertions](%base_url%/wiki/alumni/adriankuhn/javacompiler/forceassertions), are at least include a simple JUnit test that asserts that assertions are turned on

```
    import org.junit.Test;
    public class AssertionsEnabledTest {
        @Test(expected = AssertionError.class)
        public void assertionsEnabled() {
            assert false;
        }
    }
```

&nbsp;

## Read also


-  [](%base_url%/wiki/alumni/adriankuhn/javacompiler/forceassertions) as a Javac plugin
