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

  " Setup Bundle Support {

    " The next two lines ensure that the ~/.vim/bundle/ system works
    runtime! autoload/pathogen.vim
    silent! call pathogen#helptags()
    silent! call pathogen#runtime_append_all_bundles()

  " }

" }

source $HOME/.vim/config/general.vim
source $HOME/.vim/config/file_options.vim
source $HOME/.vim/config/plugin_options.vim
source $HOME/.vim/config/key_mappings.vim
source $HOME/.vim/config/command_mappings.vim
source $HOME/.vim/config/file_autocommands.vim
source $HOME/.vim/config/functions.vim

call InitializeDirectories()

