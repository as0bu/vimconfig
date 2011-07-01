" When on a Haskell File, we want QuickFix to run 
" cabal if possible

" We start fro the path of the file and up
let s:currentPath = expand('%:h')
let s:cabalFilePresent = filereadable(glob(s:currentPath . '/*.cabal'))

" If cabal file not found, go all the way up to the HOME 
" until you find it
while s:currentPath != $HOME && !s:cabalFilePresent
  let s:currentPath = substitute(s:currentPath, '\(.\+\)/\(.\+\)$', '\1', '')
  let s:cabalFilePresent = filereadable(glob(s:currentPath . '/*.cabal'))
endwhile

if s:cabalFilePresent
  " We create a shortcut to run 'cabal configure'
  nnoremap <buffer> <LEADER>c :<C-u>! cabal configure<CR>

  " On this buffer only
  " Change the current directory where the cabal file is 
  exec "lcd " . s:currentPath

  setl makeprg=cabal\ build

else
  " We compile the current file as the Main module
  let s:currentFile = expand('%')
  if !exists('b:qfOutputdir')
    let b:qfOutputdir = tempname()
    call mkdir(b:qfOutputdir)
  endif
  let &l:makeprg = 'ghc --make % -outputdir ' . b:qfOutputdir

endif

setl errorformat=
                 \%-Z\ %#,
                 \%W%f:%s:%c:\ Warning:\ %m,
                 \%E%f:%s:%c:\ %m,
                 \%E%>%f:%s:%c:,
                 \%+C\ \ %#%m,
                 \%W%>%f:%s:%c:,
                 \cabal:\ %m,
                 \%+C\ \ %#%tarning:\ %m,
                 \%-G%.%#

