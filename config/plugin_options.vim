" Plugin settings {

  " minibufexpl Plugin {
    let g:miniBufExplMapWindowNavVim = 1
    let g:miniBufExplMapWindowNavArrows = 1
    let g:miniBufExplMapCTabSwitchBufs = 1
    let g:miniBufExplModSelTarget = 1
  " }

  " Clang Plugin {
    let g:clang_use_library = 1
  " }

" }
" Plugins {

  " VCSCommand {
"    let b:VCSCommandMapPrefix=',v'
"    let b:VCSCommandVCSType='git'
  " } 
  
  " PIV {
    let g:DisableAutoPHPFolding = 0
    "let cfu=phpcomplete#CompletePHP
  " }
  
  " Supertab {
    let g:SuperTabDefaultCompletionType = "context"
    let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
  " }

  " Misc { 
    :map <C-F10> <Esc>:vsp<CR>:VTree<CR>
    " map Control + F10 to Vtree

        noremap <leader><F5> :CheckSyntax<cr>
    let g:checksyntax_auto = 1

    "comment out line(s) in visual mode -RB: If you do this, you can't
        "switch sides of the comment block in visual mode.
    "vmap  o  :call NERDComment(1, 'toggle')<CR>
    let g:NERDShutUp=1

    let b:match_ignorecase = 1
  " }
  
  " ShowMarks {
    let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    " Don't leave on by default, use :ShowMarksOn to enable
    let g:showmarks_enable = 0
    " For marks a-z
    highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
    " For marks A-Z
    highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
    " For all other marks
    highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
    " For multiple marks on the same line.
    highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen
  " }
  
  " Command-t {
        let g:CommandTSearchPath = $HOME . '/Code'
  " }

  " OmniComplete {
    "if has("autocmd") && exists("+omnifunc")
      "autocmd Filetype *
        "\if &omnifunc == "" |
        "\setlocal omnifunc=syntaxcomplete#Complete |
        "\endif
    "endif

    " Popup menu hightLight Group
    "highlight Pmenu  ctermbg=13  guibg=DarkBlue
        "highlight PmenuSel  ctermbg=7  guibg=DarkBlue    guifg=LightBlue
    "highlight PmenuSbar ctermbg=7  guibg=DarkGray
    "highlight PmenuThumb      guibg=Black

    hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
    hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
    hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

    " some convenient mappings 
    inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
    inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
    inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
    inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
    inoremap <expr> <C-d>     pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
    inoremap <expr> <C-u>      pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"

        " and make sure that it doesn't break supertab
        let g:SuperTabCrMapping = 0
        
    " automatically open and close the popup menu / preview window
    au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
    set completeopt=menu,preview,longest
  " }
  
  " Ctags {
    " This will look in the current directory for 'tags', and work up the tree towards root until one is found. 
    set tags=./tags;/,$HOME/vimtags
        map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR> " C-\ - Open the definition in a new tab
        map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>      " A-] - Open the definition in a vertical split
  " }

  " EasyTags {
       " Disabling for now. It doesn't work well on large tag files 
        let g:loaded_easytags = 1  " Disable until it's working better
    let g:easytags_cmd = 'ctags'
        let g:easytags_dynamic_files = 1
    if !has('win32') && !has('win64')
            let g:easytags_resolve_links = 1
        endif
  " }

  " Delimitmate {
    au FileType * let b:delimitMate_autoclose = 1

    " If using html auto complete (complete closing tag)
        au FileType xml,html,xhtml let b:delimitMate_matchpairs = "(:),[:],{:}"
  " }
  
  " AutoCloseTag {
    " Make it so AutoCloseTag works for xml and xhtml files as well
    au FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
  " }

  " SnipMate {
    " Setting the author var
        " If forking, please overwrite in your .vimrc.local file
    let g:snips_author = 'Steve Francia <steve.francia@gmail.com>'
    " Shortcut for reloading snippets, useful when developing
    nnoremap ,smr <esc>:exec ReloadAllSnippets()<cr>
  " }

  " NerdTree {
    map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
    map <leader>e :NERDTreeFind<CR>
    nmap <leader>nt :NERDTreeFind<CR>

    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
    let NERDTreeChDirMode=0
    let NERDTreeQuitOnOpen=1
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
  " }
    
    " Tabularize {
        if exists(":Tabularize")
          nmap <Leader>a= :Tabularize /=<CR>
          vmap <Leader>a= :Tabularize /=<CR>
          nmap <Leader>a: :Tabularize /:<CR>
          vmap <Leader>a: :Tabularize /:<CR>
          nmap <Leader>a:: :Tabularize /:\zs<CR>
          vmap <Leader>a:: :Tabularize /:\zs<CR>
          nmap <Leader>a, :Tabularize /,<CR>
          vmap <Leader>a, :Tabularize /,<CR>
          nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
          vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
        endif
     " }


  " Richard's plugins {
    " Fuzzy Finder {
      """ Fuzzy Find file, tree, buffer, line
      nmap <leader>ff :FufFile **/<CR>
      nmap <leader>ft :FufFile<CR>
      nmap <leader>fb :FufBuffer<CR>
      nmap <leader>fl :FufLine<CR>
      nmap <leader>fr :FufRenewCache<CR>
    " }

    " Session List {
      set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
      nmap <leader>sl :SessionList<CR>
      nmap <leader>ss :SessionSave<CR>
    " }
    
    " Buffer explorer {
      nmap <leader>b :BufExplorer<CR>
    " }
    
    " VCS commands {
      nmap <leader>vs :VCSStatus<CR>
      nmap <leader>vc :VCSCommit<CR>
      nmap <leader>vb :VCSBlame<CR>
      nmap <leader>va :VCSAdd<CR>
      nmap <leader>vd :VCSVimDiff<CR>
      nmap <leader>vl :VCSLog<CR>
      nmap <leader>vu :VCSUpdate<CR>
    " }
    " php-doc commands {
      nmap <leader>pd :call PhpDocSingle()<CR>
      vmap <leader>pd :call PhpDocRange()<CR>
    " }
    
    " Debugging with VimDebugger {
      map <F11> :DbgStepInto<CR>
      map <F10> :DbgStepOver<CR>
      map <S-F11> :DbgStepOut<CR>
      map <F5> :DbgRun<CR>
      map <F6> :DbgDetach<CR>
      map <F8> :DbgToggleBreakpoint<CR>
      map <S-F8> :DbgFlushBreakpoints<CR>
      map <F9> :DbgRefreshWatch<CR>
      map <S-F9> :DbgAddWatch<CR>
    " }

    " Taglist Variables {
      let Tlist_Auto_Highlight_Tag = 1
      let Tlist_Auto_Update = 1
      let Tlist_Exit_OnlyWindow = 1
      let Tlist_File_Fold_Auto_Close = 1
      let Tlist_Highlight_Tag_On_BufEnter = 1
      let Tlist_Use_Right_Window = 1
      let Tlist_Use_SingleClick = 1

      let g:ctags_statusline=1
      " Override how taglist does javascript
      let g:tlist_javascript_settings = 'javascript;f:function;c:class;m:method;p:property;v:global'
     " }

    " JSON {
      nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>
     " }
  " }
" }
