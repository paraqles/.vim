for f in split(glob('~/.vim/config/plugin_options/*.vim'), '\n')
    exe 'source' f
endfor

" Misc {
  :map <C-F10> <Esc>:vsp<CR>:VTree<CR>
  " map Control + F10 to Vtree

      noremap <leader><F5> :CheckSyntax<cr>
  let g:checksyntax_auto = 1

  "comment out line(s) in visual mode -RB: If you do this, you can't
      "switch sides of the comment block in visual mode.
  "vmap  o  :call NERDComment(1, 'toggle')<CR>
  let g:NERDShutUp=1

  let b:match_ignorecase = 1
" }

" JSON {
  "nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>
" }
