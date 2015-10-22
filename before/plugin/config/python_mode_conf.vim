"------------------------------------------------------------------
" File: python_mode_conf.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: python-mode-klen配置
"------------------------------------------------------------------

let g:pymode = 1
" trim unused white spaces on save
" XXX tmp not remove whitespaces while in odoo, stuped.
let g:pymode_trim_whitespaces = 0
" pymode folding
let g:pymode_folding = 1
" enable pymode-motion
let g:pymode_motion = 1
" keys to view python doc
let g:pymode_doc_key = "<leader>qd"
" keys to run python
let g:pymode_run_key = "<leader>qr"
" quick key to break code
let g:pymode_breakpoint_bind = "<leader>qb"

" set pylint checker
"let g:pymode_lint_checker = "pyflaskes,pep8,mccabe"
" XXX not use pep8 when on odoo-rubish
let g:pymode_lint_checker = "pyflaskes,mccabe"
" disbale pymode-lint auto checker
let g:pymode_lint_on_write = 1
" disable usual errors check
let g:pymode_lint_select = ""
" not jump to the first error
let g:pymode_lint_jump = 0
" use quickfix for pylint check
let g:pymode_lint_hold = 1
" set the check output min and max height
let g:pymode_lint_minheight = 12
let g:pymode_lint_maxheight = 14
" key for pylint
nn <leader>ql :PymodeLint<CR>
" key for auto pep8 fix
nn <Leader>qa :PymodeLintAuto<CR>
" key for Pylint toggle
nn <Leader>qt :PymodeLintToggle<CR>

" disable the fold
let g:pymode_folding = 0
" rope complete keys
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autocomplete_map = "<A-2>"
let g:pymode_rope_lookup_project = 0
