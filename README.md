# Conjure-Julia

🚧 work in progress 🚧

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

Using the REPL within the editor is a lot more flexible than the other way around
(e.g. using `edit` and `include`). It makes context switching a lot easier.


### Utopia

This plug-in should cover all of the Conjure API, and it should extend it
where appropriate to handle a non-lisp better.
This should follow the principle of: "do what I want, not what I say."

Neovim should be a first-class development environment for Julia.
This means all of the power of the REPL should be available within Neovim.
_All of it._ Including docs and [plots](https://github.com/Evizero/UnicodePlots.jl).
(LaTeX-to-Unicode completion is already provided by [julia-vim](https://github.com/JuliaEditorSupport/julia-vim))

