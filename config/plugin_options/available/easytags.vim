" Disabling for now. It doesn't work well on large tag files
let g:loaded_easytags = 1  

let g:easytags_cmd = 'ctags'
let g:easytags_dynamic_files = 1

if !has('win32') && !has('win64')
  let g:easytags_resolve_links = 1
endif
