"------------------------------------------------------------------
" File: tagmatask_conf.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: TagmaTask插件配置
"------------------------------------------------------------------

" not jump to the first task when startup
let g:TagmaTasksJumpTask=0
" the work as task
let g:TagmaTaskTokens = ['FIEXME', 'TODO', 'NOTE', 'WARNING']
" list all tasks under current directions
nn <leader>tP :TagmaTasks **/*.py<CR>
