" Vim syntax file
" Language:     Neuro
" Maintainer:   Marcus Godwin <godiwn3@gatech.edu>

syn keyword neuroKeyword    fn import return extern
syn keyword neuroConditional    if else for while
syn keyword neuroKeyword    break continue defer
syn keyword neuroType   int char bool float double void

syn match neuroOperator     display '+\|-\|/\|*\|='

syn match numeric   display '\<\d\+'
syn match numeric   display '\<\d\.\d\+f\?'
syn match cpp_comment   display "//.*$" contains=neuroTodo
syn region c_comment   start="/\*" end="\*/" contains=neuroTodo
" FIXME: Not entirely sure I can match nested block comments in vim
" If not, this may be broken but it should work for single depth
" block comments.

syn match type_body ": *\**  *[a-zA-Z][a-zA-Z0-9_]*"

syn region neuroString start='"' skip='\\"' end='"'
syn region neuroCharacter start="'" skip="\\'" end="'"

syn keyword neuroTodo TODO FIXME NOTE


hi def link numeric neuroNumber
hi def link cpp_comment neuroComment
hi def link c_comment neuroComment
hi def link type_body neuroType

hi def link neuroNumber Number
hi def link neuroComment Comment
hi def link neuroConditional Conditional
hi def link neuroKeyword Keyword
hi def link neuroType Type
hi def link neuroOperator Operator
hi def link neuroString String
hi def link neuroCharacter Character
hi def link neuroTodo Todo
