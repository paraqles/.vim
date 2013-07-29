" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
"

" Environment {

  " Basics {
    set nocompatible     " must be first line
    set background=dark     " Assume a dark background
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

  "source $HOME/.vim/config/plugins.vim
  runtime! config/plugins.vim
" }

runtime! config/*.vim
"for f in split(glob($HOME . '/.vim/config/*.vim'), '\n')
    "exe 'source' f
"endfor

call InitializeDirectories()

