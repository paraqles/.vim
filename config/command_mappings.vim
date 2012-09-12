" Command mappings {

  " Shortcuts: change Working Directory to that of the current file
  "cmap cwd lcd %:p:h
  "cmap cd. lcd %:p:h

  " For when you forget to sudo.. Really Write the file.
  cmap w!! w !sudo tee % >/dev/null

" }
