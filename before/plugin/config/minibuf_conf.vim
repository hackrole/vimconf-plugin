"------------------------------------------------------------------
" File: minibuf_conf.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: minibufExpl配置
"------------------------------------------------------------------

" 终端下禁用
if !has('gui_running')
    let g:loaded_minibufexplorer = 1
endif
" minibuf splits
let g:miniBufExplSplitBelow = 0
" max lines
let g:miniBufExplmaxSize = 3
" num of buf to show minibufexpl, big to deny adn start by keymap
let g:miniBufExplorerMoreThanOne = 35
" enbale [hjkl] key
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
" tab to switch
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
" not reopen
let g:miniBufExplCloseOnSelect = 1
" for debug
"let g:miniBufExplorerDebugLevel = 0/4/10
" 按键绑定
map <Leader>mt :TMiniBufExplorer<cr>
map <leader>mm :MiniBufExplorer<cr>
map <leader>mu :UMiniBufExplorer<cr>
