source $HOME/.config/dotfiles/vim/$HOST/android-settings.vim

function s:findProjectRoot(path)
  if empty(a:path)
    return a:path
  elseif empty(glob(a:path . '/settings.gradle'))
    return s:findProjectRoot(resolve(a:path . '/..'))
  elseif a:path == '/'
    return ""
  else
    return a:path
  endif
endfunction

