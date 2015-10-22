"------------------------------------------------------------------
" File: syntastic_conf.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: syntastic配置 多语言语法检查
"------------------------------------------------------------------

" check on open and save
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
" use all checker at once
let g:syntastic_aggregate_errors = 1
" auto open error window while errors
let g:syntastic_auto_loc_list = 0
" set sign symbol
let g:syntastic_error_symbol = 'EE'
let g:syntastic_style_error_symbol = 'E>'
let g:syntastic_warning_symbol = 'WW'
let g:syntastic_style_warning_symbol = 'W>'
" never mouse
let g:syntastic_enable_balloons = 0
" use highlight
let g:syntastic_enable_highlighting = 0
" error window height
let g:syntastic_loc_list_height = 5

" always active, use toggle to passive
let g:syntastic_mode_map = {
            \   'mode': 'active',
            \   'active_filetypes': [],
            \   'passive_filetypes': ['python']}

" set the checker
let g:syntastic_c_checkers = ['gcc', 'make', 'cppcheck']

" not working now. set lua checker
let g:syntastic_lua_checkers = ["luac", "luacheck"]
let g:syntastic_lua_luacheck_args = "--no-unused-args"

"1}}}
