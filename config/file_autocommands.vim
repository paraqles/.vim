" Filetype specific autocommands {

if has('autocmd')
  " Enable filetype detection
  filetype on
  filetype plugin on
  filetype plugin indent on

  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  " For Makefile
  autocmd Filetype make setlocal ts=4 sts=4 sw=4 noet

  " For yaml
  autocmd Filetype make setlocal ts=2 sts=2 sw=2 et

  " For Ruby
  autocmd Filetype ruby source ~/.vim/lang/ruby.vim

  " For rails
  autocmd Filetype eruby source ~/.vim/lang/rails.vim

  " For Perl
  autocmd Filetype perl source ~/.vim/lang/perl.vim

  " For python
  autocmd Filetype python source ~/.vim/lang/python.vim

  " For php
  autocmd Filetype php setlocal ts=4 sts=4 sw=4 noet
  autocmd Filetype php setlocal omnifunc=phpcomplete#CompletePHP

  " For html
  autocmd Filetype html setlocal ts=2 sts=2 sw=2 noet
  autocmd Filetype html setlocal omnifunc=htmlcomplete#CompleteTags

  " For javascript
  autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 et
  autocmd Filetype javascript setlocal omnifunc=javascriptcomplete#CompleteJS

  " For css
  autocmd Filetype css setlocal ts=2 sts=2 sw=2 et
  autocmd Filetype css setlocal omnifunc=csscomplete#CompleteCSS

  " For lua
  autocmd Filetype lua setlocal ts=2 sts=2 sw=2 et
  autocmd Filetype lua setlocal omnifunc=luacomplete#Complete

  autocmd BufNewFile,BufRead *.pde setlocal ft=arduino
  autocmd Filetype arduino setlocal ts=2 sts=2 sw=2 et
endif

" }
