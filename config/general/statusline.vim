" Statusline {
  if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    " Buffer number
    "set statusline=[Buf:%3n]
    " Filename
    "set statusline+=[%f]
    " Options
    "set statusline+=[%w%h%m%r]
    " filetype and syntax
    "set statusline+=[%{&ff}/%Y]
    " Right aligned file nav info
    "set statusline+=%=[%(%l/%c%V%)\ %p%%]
    " ASCII / Hexadecimal value of char
    "set statusline+=[A=\%03.3b/H=\%02.2B]
    "  Git Hotness
    "set statusline+=%{fugitive#statusline()}
    " current dir
    "set statusline+=[%{getcwd()}]
  endif
" }

