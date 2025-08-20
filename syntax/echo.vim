" Language: Echo
" Maintainer: Togglebit

if exists("b:current_syntax")
    finish
endif

" Todo
syn match echoComment "\/\/.*$" contains=echoTodo
syn keyword echoTodo TODO HACK NOTE contained

" As
syn match echoKeyword " as "he=e contains=TOP

" Command
syn match echoCommand "^\s*\w\+\s*"he=e contains=TOP

" String
syn region echoString start='"' end='"' contains=echoData

" Variable
syn match echoVar /\<goto\>\s\+$\w\+$/ contained

let b:current_syntax = "echo"

hi def link echoVar             Todo
hi def link echoKeyword         Identifier
hi def link echoCommand         Statement
hi def link echoValue           Constant
hi def link echoAttribute       Identifier
hi def link echoString          String
hi def link echoTodo            Todo
hi def link echoComment         Comment
hi def link echoAssocEvents     Special
