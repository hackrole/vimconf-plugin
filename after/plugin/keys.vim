"------------------------------------------------------------------
" File: keys.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: 全局按键绑定
"------------------------------------------------------------------


" --------------------------------------------------
" [tab相关] {{{1
" --------------------------------------------------
nnoremap <M-x> :tabclose<CR>
nnoremap <M-c> :tabnew<CR>
inoremap <M-x> <Esc>:tabclose<CR>
inoremap <M-c> <Esc>:tabnew<CR>

nnoremap <M-n> :tabprevious<CR>
nnoremap <M-m> :tabnext<CR>
inoremap <M-n> <Esc>:tabprevious<CR>
inoremap <M-m> <Esc>:tabprevious<CR>
" 1}}}
" --------------------------------------------------
" [窗口操作] {{{1
" --------------------------------------------------
nnoremap  <M-=> <C-w>=
nnoremap <silent> <M-+> :resize +3<CR>
nnoremap <silent> <M--> :resize -3<CR>
nnoremap <silent> <leader>+ :vertical resize +3<CR>
nnoremap <silent> <leader>- :vertical resize -3<CR>

nnoremap <silent> <M-h> :wincmd h<CR>
nnoremap <silent> <M-l> :windcmd l<CR>
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-W>k
inoremap <M-h> <Esc><C-w>h
inoremap <M-h> <Esc><C-w>l
inoremap <M-j> <Esc><C-w>j
inoremap <M-k> <Esc><C-W>k

" 1}}}
" --------------------------------------------------
" [复制粘贴] {{{1
" --------------------------------------------------

vnoremap <M-y> "+y
nnoremap <M-p> "+p
inoremap <M-p> <Esc>"+pa

" 命令行下粘贴
cnoremap <M-p> <C-R>+
"inoremap <script> <M-p> paste#paste_cmd['i']
"vnoremap <script> <M-p> paste#paste_cmd['v']
" 命令行补全
cnoremap <unique> <silent> <M-p> <Plug>CmdlineCompleteBackward
cnoremap <unique> <silent> <M-n> <Plug>CmdlineCompleteForward
" 1}}}
" -------------------------------------------------
" [vim ConqueTerm快捷键]{{{1
" -------------------------------------------------
nn <leader>Bb :tabnew<CR>:ConqueTerm bash<CR>
nn <leader>bb :botright 15split<CR>:ConqueTerm bash<CR>
ino <leader>Bb <Esc>:tabnew<CR>:ConqueTerm bash<CR>
ino <Leader>bb <Esc>:botright 15split<CR>:ConqueTerm bash<CR>
nn <leader>Bp :tabnew<cr>:ConqueTerm ipython<CR>
nn <leader>bp :botright 15split<CR>:ConqueTerm ipython<CR>
ino <leader>bp <Esc>:tabnew<cr>:ConqueTerm ipython<CR>
ino <leader>Bp <Esc>:botright 15split<CR>:ConqueTerm ipython<CR>
" 1}}}
" [快捷按鍵] {{{1
" ===============
ino <M-o> <ESC>o
ino <M-S-o> <ESC>O
ino <C-o> <CR><ESC>O
ino <M-k> <ESC>O
ino <M-j> <CR>
ino <M-n> <Down>
ino <M-m> <Up>
nn <leader>hh :noh<CR>
" CTRL-A is Select all(CTRL-A实现全选)
"noremap <C-A> gggH<C-O>G
"inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
"cnoremap <C-A> <C-C>gggH<C-O>G
"onoremap <C-A> <C-C>gggH<C-O>G
"snoremap <C-A> <C-C>gggH<C-O>G
"xnoremap <C-A> <C-C>ggVG
" 1}}}
" [normal-mode 下防emacs快捷键]
" =============================
"TODO: consider it.
"ino <C-n> <Down>
"ino <C-p> <Up>
ino <M-e> <Esc>$a
ino <M-a> <Esc>0i
ino <C-f> <Right>
ino <C-b> <left>
" --------------------------------------------------
" [宏执行热键] {{{1
" --------------------------------------------------
" TODO:
" 1}}}
" --------------------------------------------------
" [快捷文件操作] {{{1
" --------------------------------------------------
" TODO: 优化成 项目目录列表
" 快捷生成ctags文件
"nn <leader>cr :!ctags -R `pwd`<CR>
" 快捷生成filenametags文件（需要shell脚本支持）
"nn <leader>fr :!gen_LFT<CR>
" 快捷寄存器剪切复制粘贴

vno <M-a> "
" 快捷退出
nn <M-q> :q!<CR>
"nn <C-q> :qa!<CR>
" Ctrl+s保存
no <C-s> :up<CR>
vno <C-s> <C-C>:up<CR>
ino <C-s> <C-O>:up<CR>
" 快捷设置文档类型
nn <M-t>h :set ft=html<CR>
nn <M-t>c :set ft=css<CR>
nn <M-t>p :set ft=php<CR>
nn <M-t>j :set ft=javascript<CR>
" sudo save
cmap w!! w !sudo tee > /dev/null %
" }}}

" pytest keyboard{{{1
" ======================
" XXX try more beautiful way
noremap <leader>ps Oimport pytest; pytest.set_trace()<Esc>

" 快捷编辑配置文件 {{{1
" =====================
nn <leader>ev :tabnew $HOME/.vimrc<CR>
nn <leader>em :tabnew $VIMFILES/conf/main.vim<CR>
nn <leader>es :tabnew $VIMFILES/conf/set.vim<CR>
nn <leader>ef :tabnew $VIMFILES/conf/function.vim<CR>
nn <leader>ek :tabnew $VIMFILES/conf/keyboard.vim<CR>
nn <leader>ep :tabnew $VIMFILES/conf/plugin.vim<CR>
nn <leader>ec :tabnew $VIMFILES/conf/command.vim<CR>
nn <leader>ea :tabnew $VIMFILES/conf/ab.vim<CR>
nn <leader>eu :tabnew $VIMFILES/log/update.log<CR>

nn <leader>Ev :split $HOME/.vimrc<CR>
nn <leader>Em :split $VIMFILES/conf/main.vim<CR>
nn <leader>Es :split $VIMFILES/conf/set.vim<CR>
nn <leader>Ef :split $VIMFILES/conf/function.vim<CR>
nn <leader>Ek :split $VIMFILES/conf/keyboard.vim<CR>
nn <leader>Ep :split $VIMFILES/conf/plugin.vim<CR>
nn <leader>Ec :split $VIMFILES/conf/command.vim<CR>
nn <leader>Ea :split $VIMFILES/conf/ab.vim<CR>
nn <leader>Eu :split $VIMFILES/log/update.log<CR>
"1}} vim:fdm=marker:fdc=1

