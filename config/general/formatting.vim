" Formatting {

  " do not wrap long lines
  "set nowrap
  " do wrap long lines
  set wrap

  " match, to be used with % 
  "set matchpairs+=<:>

  " pastetoggle (sane indentation on pastes)
  set pastetoggle=<F12>

  " auto format comment blocks
  "set comments=sl:/*,mb:*,elx:*/  

  " Remove trailing whitespaces and ^M chars
  autocmd FileType c,cpp,java,php,js,python,twig,xml,yml
  autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

" }
