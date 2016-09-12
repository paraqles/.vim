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
