runtime! plugins/repo/vim-pathogen/autoload/pathogen.vim
call pathogen#helptags()

execute pathogen#infect('plugins/base/{}')

