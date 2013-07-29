" autocommands {

if has('autocmd')
  runtime! config/autocommands/*.vim
  "for f in split(glob($HOME . '/.vim/config/autocommands/*.vim'), '\n')
      "exe 'source' f
  "endfor
endif

" }
