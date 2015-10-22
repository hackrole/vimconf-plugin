"------------------------------------------------------------------
" File: tagbar_conf.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: Tagbar相关配置
"------------------------------------------------------------------

" taglist的替代插件
nmap <F4> :TagbarToggle<CR>
imap <F4> <Esc>:TagbarToggle<CR>
nmap <C-F4> :TagbarTogglePause<CR>
imap <C-F4> :TagbarTogglePause<CR>
" default sort tags by order in source file
let g:tagbar_sort=0
" show line number<1-absolute, 2-relative>
let g:tagbar_show_linenumbers=1
" default not fold the tags
let g:tagbar_fold_level=99
" TODO Tagbar golang gotags支持
let g:tagbar_type_go = {
\   'ctagstype': 'go',
\   'kinds': [
\       'p:package',
\       'i:imports:1',
\       'c:constants',
\       'v:variables',
\       't:types',
\       'n:interfaces',
\       'w:fields',
\       'e:embedded',
\       'm:methods',
\       'r:constructor',
\       'f:functions',
\   ],
\   'sro': '.',
\   'kind2scope': {
\       't': 'ctype',
\       'n': 'ntype',
\   },
\   'scope2kind': {
\       'ctype': 't',
\       'ntype': 'n',
\   },
\   'ctagsbin': 'gotags',
\   'ctagsargs': '-sort -silent'
\}
