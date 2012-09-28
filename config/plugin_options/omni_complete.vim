"if has("autocmd") && exists("+omnifunc")
  "autocmd Filetype *
    "\if &omnifunc == "" |
    "\setlocal omnifunc=syntaxcomplete#Complete |
    "\endif
"endif

" Popup menu hightLight Group
"highlight Pmenu  ctermbg=13  guibg=DarkBlue
"highlight PmenuSel  ctermbg=7  guibg=DarkBlue    guifg=LightBlue
"highlight PmenuSbar ctermbg=7  guibg=DarkGray
"highlight PmenuThumb      guibg=Black

"hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
"hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
"hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

" some convenient mappings
"inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <C-d>     pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
"inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

" and make sure that it doesn't break supertab
"let g:SuperTabCrMapping = 0

" automatically open and close the popup menu / preview window
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

"set completeopt=menu,preview,longest

