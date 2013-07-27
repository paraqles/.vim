" Key mappings {

  " Unused key mappings {

    " Making it so ; works like : for commands. Saves typing and
    " eliminates :W style typos due to lazy holding shift.
    "nnoremap ; :

    " Stupid shift key fixes
    "cmap W w
    "cmap WQ wq
    "cmap wQ wq
    "cmap Q q
    "cmap Tabe tabe

    " Fix home and end keybindings for screen, particularly on mac
    " - for some reason this fixes the arrow keys too. huh.
    "map [F $
    "imap [F $
    "map [H g0
    "imap [H g0

    " visual shifting (does not exit Visual mode)
    "vnoremap < <gv
    "vnoremap > >gv

  " }

  let mapleader=","

  map <leader>e :e new<cr>

  "source $HOME/.vim/config/key_mappings/normal.vim
  "source $HOME/.vim/config/key_mappings/visual.vim
  "source $HOME/.vim/config/key_mappings/command.vim

  "source $HOME/.vim/config/key_mappings/buffer.vim
  "source $HOME/.vim/config/key_mappings/move_text.vim
  "source $HOME/.vim/config/key_mappings/folding.vim
  "source $HOME/.vim/config/key_mappings/tabs.vim

  runtime! config/key_mappings/*.vim

" }
