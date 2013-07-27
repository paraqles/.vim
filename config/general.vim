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

  " GUI Settings {
    " GVIM- (here instead of .gvimrc)
    if has('gui_running')
      set guioptions-=T            " remove the toolbar
      set lines=40                 " 40 lines of text instead of 24,
    else
      set term=builtin_ansi       " Make arrow and other keys work
    endif
  " }

  runtime! config/general/*.vim
  "for f in split(glob($HOME . '/.vim/config/general/*.vim'), '\n')
      "exe 'source' f
  "endfor

" }
