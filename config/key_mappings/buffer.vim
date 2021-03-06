" Buffer move shortcuts
map <leader>bf :bf<cr>
map <leader>bl :bl<cr>
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>

" Buffer move shortcuts
map <space>f :bf<cr>
map <space>l :bl<cr>
map <space>n :bn<cr>
map <space>p :bp<cr>

" Close Buffer and activate syntax highlight
map <leader>bd :bd!<cr>:syn on<cr>
cnoremap :bd :Bclose!<cr>:syn on<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

