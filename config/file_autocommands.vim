" Filetype specific autocommands {

if has('autocmd')
  " Enable filetype detection
  filetype on
  filetype plugin on
  filetype plugin indent on

  for f in split(glob($HOME . '/.vim/config/filetypes/*.vim'), '\n')
      exe 'source' f
  endfor
endif

" }
