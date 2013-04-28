" Set markdown specific options

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab

setlocal textwidth=79
setlocal wrapmargin=3

setlocal colorcolumn=80

nmap <F5> :!`which multimarkdown` %:p > %:p:r.html<CR><CR>
