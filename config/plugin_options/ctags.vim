" This will look in the current directory for 'tags', and work up the tree towards root until one is found.
set tags=./tags;/,$HOME/vimtags

" C-\ - Open the definition in a new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" A-] - Open the definition in a vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

