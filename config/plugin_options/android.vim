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

"let s:jars = split(globpath(s:findProjectRoot(expand('%:p:h')), '**/build/**/*.jar'), '\n')

"echo join(s:jars, "\n")

let g:syntastic_java_javac_classpath = g:android_sdk_path . "/platforms/android-22/android.jar:"
". join(s:jars, ":")
