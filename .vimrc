" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
"

" Environment {
  " Basics {
    set nocompatible     " must be first line
    set hidden
    "set background=dark     " Assume a dark background
  " }

  " Windows Compatible {
    " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
    " across (heterogeneous) systems easier.
    if has('win32') || has('win64')
      set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    endif
    if !has('win32') && !has('win64')
        set term=$TERM       " Make arrow and other keys work
    endif
  " }

" }
"
filetype off
set rtp+=~/.vim/vundle_bootstrap.vim

call vundle#begin()
call vundle#end()

filetype plugin on

runtime! vundle.vim
"runtime! config/plugins.vim

if has('autocmd')
  runtime! autocommands/*.vim
endif

runtime! functions/*.vim

runtime! config/*.vim

"call InitializeDirectories()

