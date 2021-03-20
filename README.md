**NOTICE:**

I've been busy with my coursework and other projects. It'll take a while before
I can resume development here.

If you're interested in using this project… You're here too soon!
In the mean time, [nvim-treesitter-text-objects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects),
with some REPL plugin (there's plenty of them), will get you half-way
there.

If you're interested in continuing this project, consider opening an issue.
Note that the tree-sitter draft here has already been integrated to Conjure,
and will most likely continue to improve there. This repo should probably just
implement a client similar to those that [already exist](https://github.com/Olical/conjure/tree/master/fnl/conjure/client)


🚧 **WORK IN PROGRESS** (sort of) 🚧

1. Use [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) to parse Julia code.

2. Use [Conjure](https://github.com/Olical/conjure) to manage the REPL external process,
   floating windows, and all the fancy stuff.

3. ???

4. PROFIT


### What?

This repo aims to bring Conjure and nvim-treesitter together
to improve the Julia development experience.
It should extract syntactically correct expressions from the buffer,
and send them to the REPL via Conjure.


### Why?

Julia's execution model (heavily optimized JIT compilation)
is cumbersome when used in a traditional write-compile-repeat style.
Interactive development saves the need for repeated recompilation,
and gives the user a more introspective environment.

Julia is also a great language to experiment with tree-sitter, since it's an
expression-based-language (like Lisp), pretty much all syntactic constructions
will yield a meaningful result in the REPL.


### Utopia

This plug-in should cover the Conjure API, and it should extend it
where appropriate to handle a non-lisp better.
This should follow the principle of: "do what I want, not what I say."
