"------------------------------------------------------------------
" File: emmet.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: Emmet相关配置
"------------------------------------------------------------------

let g:user_emmet_settings = {
\  'indentation' : '  ',
\  'variables': {
\       'lang': 'en',
\   },
\   'html': {
\       'filters': 'html',
\       'expandos': {},
\       'default_attributes': {
\           'a': {'href': '#'},
\           'script': [{'type': 'text/javscript'}],
\           'link': [{'rel': 'stylesheet'}, {'href': ''}],
\       },
\       'aliases': {
\           'scp': 'script',
\           'bq': 'blockquote',
\           'obj': 'object',
\           'hd': 'header',
\           'st': 'section',
\       },
\       'empty_element_suffix': ' />',
\   },
\   'css': {
\       'filters': 'fc',
\   },
\}
" only insert mode
let g:user_emmet_mode='a'
" only use for html/css
let g:user_emmet_install_global = 1

" key bind
let g:user_emmet_leader_key  = '<C-y>'
let g:user_emmet_expandabbr_key = '<M-;>'
let g:user_emmet_next_key = '<C-y>n'
let g:user_emmet_prev_key = '<C-y>p'
