" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
"

" Environment {
  " Basics {
    set nocompatible     " must be first line
    set hidden
    "set background=dark     " Assume a dark background
  " }

  " Windows Compatible {
    " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
    " across (heterogeneous) systems easier.
    if has('win32') || has('win64')
      set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    endif
    if !has('win32') && !has('win64')
        set term=$TERM       " Make arrow and other keys work
    endif
  " }

" }
"

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

source ~/.vim/vundle.vim

call vundle#end()

filetype on
filetype plugin on

"runtime! vundle.vim
"runtime! config/plugins.vim

if has('autocmd')
  runtime! autocommands/*.vim
endif

runtime! functions/*.vim
runtime! config/plugin_options.vim

"runtime! config/*.vim

" General {
  " automatically enable mouse usage
  set mouse=a

  set encoding=utf-8
  scriptencoding utf-8

  " abbrev. of messages (avoids 'hit enter')
  set shortmess+=filmnrxoOtT
  " better unix / windows compatibility
  set viewoptions=folds,options,cursor,unix,slash
  " allow for cursor beyond last character
  set virtualedit=onemore
  " Store a ton of history (default is 20)
  set history=1000

  " windows can be 0 line high
  set winminheight=0

  " show list instead of just completing
  set wildmenu
  " command <Tab> completion, list matches, then longest common part, then all.
  set wildmode=list:longest,full

  " backspace and cursor keys wrap to
  set whichwrap=b,s,h,l,<,>,[,]

  " auto fold code
  set foldenable

  " backups are nice ...
  set backup

  " Setting up the undo {

    " so is persistent undo ...
    set undofile
    "maximum number of changes that can be undone
    set undolevels=1000
    "maximum number lines to save for undo on a buffer reload
    set undoreload=10000

    " make vim save view (state) (folds, cursor, etc)
    au BufWinLeave * silent! mkview
    "make vim load view (state) (folds, cursor, etc)
    au BufWinEnter * silent! loadview

  " }

  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  set tabstop=2
  set softtabstop=2
  set shiftwidth=2

  " Use space instead of tabs
  set expandtab

  " Autoindent
  set autoindent
  " Smart indent
  set smartindent

  set wrap
  set linebreak

  set backspace=2

  set modeline
  " automatically write a file when leaving a modified buffer
  " set autowrite

  "set gdefault          " the /g flag on :s substitutions by default

  " lines to scroll when cursor leaves screen
  set scrolljump=5
  " minimum lines to keep above and below cursor
  set scrolloff=3

  set splitbelow

  " activate special meaning for \(\) \| ~ * . $
  " Removes special meaning for {}
  set magic

  " Remove hiding of characters (especially annoying in json)
  set conceallevel=0

  " Give PASTE mode a toggle keymapping
  set pastetoggle=<F12>

  " Remove trailing whitespaces and ^M chars
  autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

  set showmode
  set showmatch

  set linespace=1

  set spell

" }

" GUI Settings {

  colorscheme smyck

  " GVIM- (here instead of .gvimrc)
  if has('gui_running')
    set guioptions-=T            " remove the toolbar
    set lines=40                 " 40 lines of text instead of 24,
  else
    set term=builtin_ansi       " Make arrow and other keys work
  endif

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

  " Ruler and commandline info {
    if has('cmdline_info')
      " show the ruler
      set ruler
      " a ruler on steroids
      set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
      " show partial commands in status line and selected characters/lines
      " in visual mode
      set showcmd
    endif
  " }

  " Statusline {
    if has('statusline')
      set laststatus=2

      " Broken down into easily includeable segments
      " Buffer number
      "set statusline=[Buf:%3n]
      " Filename
      "set statusline+=[%f]
      " Options
      "set statusline+=[%w%h%m%r]
      " filetype and syntax
      "set statusline+=[%{&ff}/%Y]
      " Right aligned file nav info
      "set statusline+=%=[%(%l/%c%V%)\ %p%%]
      " ASCII / Hexadecimal value of char
      "set statusline+=[A=\%03.3b/H=\%02.2B]
      "  Git Hotness
      "set statusline+=%{fugitive#statusline()}
      " current dir
      "set statusline+=[%{getcwd()}]
    endif
  " }

" }

" Search options {

  " find as you type search
  set incsearch
  " highlight search terms
  set hlsearch

  " case insensitive search
  set ignorecase
  " case sensitive when uc present
  set smartcase
" }

" Mappings {
  let mapleader=","

  " open new empty buffer
  map <leader>e :e new<cr>

  " Command Mappings {
    cmap cwd lcd %:p:h
  " }

  " Split movements {
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-l> <C-W>l
    map <C-h> <C-W>h
  " }

  " Buffer move shortcuts
  map <leader>bf :bf<cr>
  map <leader>bl :bl<cr>
  map <leader>bn :bn<cr>
  map <leader>bp :bp<cr>

  " Buffer move shortcuts
  map <space>f :bf<cr>
  map <space>l :bl<cr>
  map <space>n :bn<cr>
  map <space>p :bp<cr>

  " Close Buffer and activate syntax highlight
  map <leader>bd :bd!<cr>:syn on<cr>
  cnoremap :bd :Bclose!<cr>:syn on<cr>

  " Switch CWD to the directory of the open buffer
  map <leader>cd :cd %:p:h<cr>:pwd<cr>

  " Code folding options
  nmap <leader>f0 :set foldlevel=0<CR>
  nmap <leader>f1 :set foldlevel=1<CR>
  nmap <leader>f2 :set foldlevel=2<CR>
  nmap <leader>f3 :set foldlevel=3<CR>
  nmap <leader>f4 :set foldlevel=4<CR>
  nmap <leader>f5 :set foldlevel=5<CR>
  nmap <leader>f6 :set foldlevel=6<CR>
  nmap <leader>f7 :set foldlevel=7<CR>
  nmap <leader>f8 :set foldlevel=8<CR>
  nmap <leader>f9 :set foldlevel=9<CR>

  " Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
  nmap <M-j> mz:m+<cr>`z
  nmap <M-k> mz:m-2<cr>`z
  vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

  if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
  endif

  " Open vimgrep and put the cursor in the right position
  map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

  " Vimgreps in the current file
  map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><rigyt>

  " Do :help cope if you are unsure what cope is. It's super useful!
  "
  " When you search with vimgrep, display your results in cope by doing:
  "   <leader>cc
  "
  " To go to the next search result do:
  "   <leader>n
  "
  " To go to the previous search results do:
  "   <leader>p
  "
  map <leader>cc :botright cope<cr>
  map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
  map <leader>n :cn<cr>
  map <leader>p :cp<cr>

  " Unhighlight search
  map <leader><cr> :noh<cr>

  " Wrapped lines goes down/up to next row, rather than next line in file.
  nnoremap j gj
  nnoremap k gk

  " Yank from the cursor to the end of the line, to be consistent with C and D.
  nnoremap Y y$

  " Shortcuts
  map <leader>w :w!<cr>

  map <leader>su g~iw

  map <leader>q :qa<cr>

  inoremap <C-Backspace> <C-W>

  " When you press gv you vimgrep after the selected text
  vnoremap <silent> gv :call VisualSelection('gv')<CR>

  " When you press <leader>r you can search and replace the selected text
  vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" }

" Plugin Options {

  " Syntastic Options {
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 0
    let g:syntastic_check_on_wq = 0
  " }

call InitializeDirectories()

