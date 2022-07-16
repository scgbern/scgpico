---
Title: Use Abstract Syntax Tree AST to insert complex units of behavioral modifications
---
#Use Abstract Syntax Tree AST to insert complex units of behavioral modifications
Currently, Geppetto uses the bytecode level to insert hooks, which is cumbersome and daunting, because bytecode is a very low-level structure and modifications of such a structure are hard to perform and maintain (e.g., debugging or inspecting of hooks is not really possible). Especially, it is hard to compose single hooks to form a composition of hooks performing a complex task.
We could overcome these problems by using the abstract syntax tree (AST) to introduce hooks, because annotating the AST is easier, more powerful and more expressive than manipulating bytecode. Debugging of methods with hooks is no problem anymore when these hooks are annotations of the AST, composing hooks is much simpler.
The first goal of this project is to develop a hook installer working on the AST level. This installer annotates the AST to introduce hooks and provides interfaces to install simple as well as complex, composed hooks. This installer can use ByteNurse, a tool which allows us to annotate the AST, created by Philippe Marschall. ByteNurse already provides all of the complex logic to annotate the AST.
Furthermore, this project can be extended to also provide sophisticated means to compose hooks. Currently, it is not possible to define semantics for composing hooks in Geppetto. If one decides to install more than one hook manipulating a given operation (e.g., several hooks replace the same access to an instance variable), then Geppetto simply installs these hooks in sequence, so one hook is executed after the other in the order of their installation time.
Hence more sophisticated means are needed to compose hooks. For instance it should be possible to define the order in which hooks are executed, nesting of hooks or conditional hooks should be allowed (e.g., the second hook will be only executed if the first hook returns a certain value).
The second goal of this project is to elaborate expressive means to compose hooks, to implement the infrastructure to actually build and install such hooks, and to study useful composition mechanisms and use cases. 

To summarize the main directions of this topic are two-fold: First, enable Geppetto to insert its reflective behavior into the AST instead of the bytecode. Second, show the usefulness of the move to the AST by providing sophisticated means to compose hooks. 

It might be possible to follow just one of these two goals, although it is desirable to work on both.

Contact: [Marcus Denker](%base_url%/staff/marcusdenker), [David Roethlisberger](%base_url%/staff/davidroethlisberger)
