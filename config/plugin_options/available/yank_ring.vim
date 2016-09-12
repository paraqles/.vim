let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
let g:yankring_history_dir = '~/.vimtmp'
call EnsureDirExists( $HOME . "/.vimtmp" )
nmap <leader>y :YRShow<cr>
