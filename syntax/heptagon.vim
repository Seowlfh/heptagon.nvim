" Vim syntax file
" Language:     Heptagon
" Filenames:    *.ept

" Only do this when not done yet for this buffer
if exists("b:current_syntax")
    finish
endif

syn case match

" Syntax
syn keyword eptKeyword var returns let tel fby

syn keyword eptFuncKeyword fun node nextgroup=eptFuncName skipwhite

syn match eptOperator "+\.\?"
syn match eptOperator "-\.\?"
syn match eptOperator "\*\.\?" 
syn match eptOperator "/\.\?"

syn match eptDelimiter ";"
syn match eptRParenth "("
syn match eptLParenth ")"

syn match eptFuncName "\h\w*"
syn match eptVarName "\h\w*"

syn keyword eptBooleans true false

syn keyword eptType int float bool

syn region eptComment start="--" end=/$/
syn region eptComment start="(\*" end="\*)"

" Default highlighting
hi def link eptKeyword Keyword
hi def link eptFuncKeyword Keyword

hi def link eptOperator Operator

hi def link eptDelimiter Include
hi def link eptRParenth Include
hi def link eptLParenth Include

hi def link eptFuncName Function

hi def link eptBooleans Booleans

hi def link eptType Type

hi def link eptComment Comment

" End
let b:current_syntax = "heptagon"
