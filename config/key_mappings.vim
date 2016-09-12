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

  runtime! config/key_mappings/*.vim

" }
