imap <C-k>  <Plug>(neosnippet_expand_or_jump)
smap <C-k>  <Plug>(neosnippet_expand_or_jump)
xmap <C-k>  <Plug>(neosnippet_expand_target)

imap <expr><TAB>  neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"

smap <expr><TAB>  neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"

" For snippet_complete markter."
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

"let g:neosnippet#enable_snippets_directory="~/.vim/plugins/repo/neosnippet_snippets/neosnippets"
