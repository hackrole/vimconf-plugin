"------------------------------------------------------------------
" File: neocomplcache_conf.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: neocomplcache配置
"------------------------------------------------------------------

" TODO: not finish yet
"启动 neocomplcache
let g:neocomplcache_enable_at_startup = 1
" 缓存dir
let g:neocomplcache_temporary_dir = "~/.vim/temp/neocaches"
" 补全弹出窗list-max
let g:neocomplcache_max_list = 18
" 补全不忽略大小写
"let g:neocomplcache_enable_ignore_case = 0
" smart case
let g:neocomplcache_enable_smart_case = 1
" 不自动弹出不全列表
"let g:neocomplcache_disable_auto_complete = 1
" 根据文件类型配置 字典文件
let g:neocomplcache_dictionary_filetype_lists = {
\   'default': '',
\   'vishell': '',
\   'css': '',
\   'php': '',
\   'python': $VIMFILES."/dict/python.dict",
\}
" 自定义source
if !exists("g:neocomplcache_sources_list")
    let g:neocomplcache_sources_list = {}
endif
let g:neocomplcache_sources_list.python = [
\   "buffer_complete",
\   "filename_complete",
\   "dictionary_complete",
\   "tags_complete",
\]
" fix the . crash error
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.python = ''
let g:neocomplcache_omni_patterns.ruby = ''
" 自动补全的最小输入控制
let g:neocomplcache_auto_completion_start_length = 2
" use smartcase
let g:neocomplcache_enable_smart_case = 1
" set the skip auto_completion time
let g:neocomplcache_skip_auto_completion_time = 0.5
" use camel case completion
let g:neocomplcache_enable_camel_case_completion = 1
" set minunum syntacx keyword length
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" authocomplPop like behavior
let g:neocomplcache_enable_auto_select = 0
" when you input ho-a, neocomplecache will select candidate 'a'.
let g:neocomplcache_enable_quick_match = 1
" define keyword
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" TODO:按键绑定
ino <expr> <A-1> neocomplcache#start_manual_complete()
ino <expr> <A-g> neocomplcache#close_popup()
ino <expr> <C-g> neocomplcache#cancel_completion()
"ino <expr> <C-z> neocomplcache#undo_completion()
