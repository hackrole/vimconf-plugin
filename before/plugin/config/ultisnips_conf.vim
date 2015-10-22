"------------------------------------------------------------------
" File: ultisnips_conf.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: ultisnips配置
"------------------------------------------------------------------

" 使用python2.7
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsEditSplit = "horizontal"
" keys
nn <C-f7> :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger = "<C-e>"
let g:UltiSnipsListSnippets = "<f7>"
let g:UltiSnipsJumpForwardTrigger = "<C-k>"
let g:UltiSnipsJumpBackwardTrigger = "<C-j>"

augroup ultisnips_sub
    autocmd FileType jinja :UltiSnipsAddFiletypes jinja.html
augroup END
