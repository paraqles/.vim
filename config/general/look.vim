" Set look options {
  if has('gui_running')
    set guifont=Sauce\ Code\ Powerline:h11
  endif
  colorscheme hybrid_material
  " Assume a dark background
  "set background=dark

  " Show linenumbers and set width for them
  set number
  set numberwidth=5

  " Display not print chars and define symbols for them
  set list
  set listchars=tab:▸\ ,eol:¬,trail:·,extends:¶,nbsp:·
  " Highlight problematic whitespace
  "set listchars=tab:>.,trail:.,extends:#,nbsp:.

  " syntax highlighting
  syntax on

  " Draw a vertical line at column
  set colorcolumn=80

  " highlight current line
  "set cursorline
  "hi cursorline guibg=#333333   " highlight bg color of current line
  "hi CursorColumn guibg=#333333   " highlight cursor

  " spell checking on
  set spell

  " display the current mode
  set showmode
  " show matching brackets/parenthesis
  set showmatch

  " No extra spaces between rows
  "set linespace=0
" }

