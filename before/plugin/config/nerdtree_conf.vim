"------------------------------------------------------------------
" File: nerdtree_conf.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: NERDTree相关配置
"------------------------------------------------------------------

" TODO: doc reaad and <f2>
" 映射切换按键
map <silent> <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>
nn <silent> <F2> :exec("NERDTree ".expand('%:h'))<CR>
imap <silent> <F2> :exec("NERDTree ".expand('%:h'))<CR>
" nerdtree ignore
let NERDTreeIgnore=['\.o$']
let NERDTreeIgnore+=['\.pyc$']
let NERDTreeIgnore+=['\.bak$']
let NERDTreeIgnore+=['\.elc']
let NERDTreeIgnore+=['^ctags$']
let NERDTreeIgnore+=['^etags$']
let NERDTreeIgnore+=['^filenametags$']
let NERDTreeIgnore+=['^cscope\.\(files\|in\.out\|out\|po.out\)$']
" more colourful
let NERDChristmasTree=1
" set nerdtree bookmark file path
let NERDTreeBookmarksFile=expand('~')."/.vim/temp/nerdtree.bookmarks"
" show bookmarks on startup
let NERDTreeShowBookmarks=1
" not show hidden file on startup
let NERDTreeShowHidden=0
" show line number on startup
let NERDTreeShowLineNumbers=1
" nerdtree positioin
let NERDTreeWinPos="left"
