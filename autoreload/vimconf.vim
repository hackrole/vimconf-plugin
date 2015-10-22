function! vimconf#setup()
    let l:current_dir = expand('%:p:h')
    let l:before_dir = substitute(l:current_dir, "autoreload", "before", "")
    let l:rpt_save = &runtimepath
    let &runtimepath = l:before_dir,l:rpt_save
endfunction
