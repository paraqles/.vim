for f in split(glob('~/.vim/plugins/base/*'), '\n')
    exe pathogen#infect(f . "/{}")
endfor

