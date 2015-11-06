" setup for vim config
" unshift before-dir and append afterall-dir
function! vimconf#setup()
    let l:current_dir = expand('%:p:h')

    let l:before_dir = substitute(l:current_dir, "autoreload", "before", "")
    let l:rpt_save = &runtimepath
    let &runtimepath = l:before_dir,l:rpt_save

    let l:after_dir = substitute(l:current_dir, "autoreload", "afterall", "")
    let l:rpt_save = &runtimepath
    let &runtimepath = l:rpt_save,l:after_dir
endfunction
