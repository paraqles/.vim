filetype off

if has('win32') || has('win64')
  runtime! plugins\repo\vim-pathogen\autoload\pathogen.vim
else
  runtime! plugins/repo/vim-pathogen/autoload/pathogen.vim
endif

execute pathogen#infect('plugins/active/{}')
call pathogen#helptags()

filetype off
syntax on
filetype plugin indent on
