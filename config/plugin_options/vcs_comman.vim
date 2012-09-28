let b:VCSCommandMapPrefix=',v'
let b:VCSCommandVCSType='git'

nmap <leader>vs :VCSStatus<CR>
nmap <leader>vc :VCSCommit<CR>
nmap <leader>vb :VCSBlame<CR>
nmap <leader>va :VCSAdd<CR>
nmap <leader>vd :VCSVimDiff<CR>
nmap <leader>vl :VCSLog<CR>
nmap <leader>vu :VCSUpdate<CR>

