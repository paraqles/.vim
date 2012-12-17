"source $HOME/.vim/functions/initialize_directories.vim
"source $HOME/.vim/functions/nerd_tree_init_as_needed.vim
"source $HOME/.vim/functions/visual_selection.vim
"source $HOM

for f in split(glob($HOME.'/.vim/functions/*.vim'), '\n')
    exe 'source' f
endfor
