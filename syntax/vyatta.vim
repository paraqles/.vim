" Vim syntax file
" Language:       Vyatta Config File

if exists("b:current_syntax")
  finish
endif

if has("folding") && exists("vyatta_fold")
  setlocal foldmethod=syntax
endif

syntax region Comment start="^\s*/\*.*" end="\*/" fold
syntax match  String  "\".*\""

syntax keyword TopLevel zone\-policy interfaces system protocols service

syntax match BlockKey "[a-z-]\+" nextgroup=BlockName skipwhite skipnl
syntax match BlockName "[a-z-]\+" nextgroup=Block skipwhite skipnl
syntax region Block start="{" end="}" fold skipwhite skipnl contains=All

hi def link TopLevel          Keyword
hi def link BlockName         Identifier
