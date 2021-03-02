if exists('g:loaded_conjure_julia')
  finish
endif

" TODO: CHANGE COMMAND NAMES
command! Jlword   lua require('conjure-julia').get_word()
command! Jlpar    lua require('conjure-julia').get_parent()
command! Jlexpr   lua require('conjure-julia').get_expr()
command! Jlroot   lua require('conjure-julia').get_root()

let g:loaded_conjure_julia = 1
