function! EnsureDirExists ( dir )
  if !isdirectory( a:dir )
    if exists( "*mkdir" )
      call mkdir( a:dir, 'p' )
    else
      echo "Could not create directory ". a:dir . ". Please do it on your own."
    endif
  endif
endfunction
