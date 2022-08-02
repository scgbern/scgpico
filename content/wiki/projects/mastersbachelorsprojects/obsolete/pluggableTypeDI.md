---
Title: A dependency injection-aware pluggable type system
---
#A dependency injection-aware pluggable type system
Pluggable types have been proposed to support multiple type systems in the same programming language. Several of such type systems and program checkers have been devised to enforce certain rules, e.g. nonnull type system, confined type system, immutable/read-only type systems. Pluggable type systems were originally proposed by Gilad Bracha in a position paper.

Dependency injection is a specific form of inversion of control, where the concern being inverted is the process of obtaining the needed dependency. The term was first coined by Martin Fowler to describe the mechanism more clearly. 

Arguments for DI are numerous:

-  testability and mocking
-  decoupling object instantation from usage, which can lead to lifecycle management (e.g. singleton)
-  separation of concerns

The primary idea behind dependency injection is to break tightly coupled code like

```
public class TurboCarImpl implements Car {
    private Engine engine = new TurboEngineImpl();
}
```

into 

```
public class TurboCarImpl {
    @Inject
    private Engine engine;
}

public class CarModule extends AbstractModule {
  @Override 
  protected void configure() {
    bind(Car.class).to(TurboCar.class);
    bind(Engine.class).to(TurboEngine.class);
  }
}
```

Objects can then assembled either manually, Car car = new TurboCarImpl( new TurboEngineImpl() ), or through a dependency injection framework where the dependency are externally specified, Car car = CarModule.get( Car.class ). 

The code above shows setter injection, but constructor injection could be used as well.

Now for a dynamically typed language, the code looks simply:

```
public class TurboCarImpl {
    @Inject
    private engine;
}

public class CarModule extends AbstractModule {
  @Override 
  protected void configure() {
    bind(#Car).to(TurboCar.class);
    bind(#engine).to(TurboEngine.class);
  }
}
```

Yeah, interface have been reintroduced indirectly with the #Car symbol.

And the point now is that a type inference or type checker could leverage the binding information to know the possible types of the engine field. 


