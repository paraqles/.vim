" Visual key mappings {

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => vimgrep searching and cope displaying
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " When you press gv you vimgrep after the selected text
  vnoremap <silent> gv :call VisualSelection('gv')<CR>

  " When you press <leader>r you can search and replace the selected text
  vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" }
