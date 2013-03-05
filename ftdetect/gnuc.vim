function! TestForGnuC()
    if searchpos('\n  {\n    ') != [0, 0]
        set filetype=gnuc
    endif
endfunction

au FileType *   if &ft == 'c' | call TestForGnuC() | endif
