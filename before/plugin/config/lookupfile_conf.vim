"------------------------------------------------------------------
" File: lookupfile_conf.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2015-10-22
" Description: lookupfile配置
"------------------------------------------------------------------

" TODO: note org
"let g:LookupFile_TagExpr ='"./filenametags"'
" 至少输入两个字符才开始查找
let g:LookupFile_MinPatLength = 2
" 不保存上次查找字符串
let g:LookupFile_PreserveLastHistory = 0
" 保存查找历史 LookupFile
let g:LookupFile_PreservePatternhistory = 1
" 取消默认<f5>按键绑定
let g:LookupFile_DisableDefaultMap = 1
" 回车打开第一个匹配项目
let g:LookupFile_AlwaysAcceptFirst = 1
" 不允许创建不存在的文件
let g:LookupFile_AllowNewFiles = 0
" 设置tag 文件的名字
if filereadable("./filenametags")
    let g:LookupFile_TagExpr = '"./filenametags"'
endif

" 设置查找忽略大小写
function! LookupFile_IgnoreCaseFunc(pattern)

    let _tags = &tags
    try 
        let $tags = eval(g:LooupFile_TagExpr)
        let newpattern ='\c' . a:pattern
        let tags = taglist(newpattern)
    catch
        echoh1 ErrorMsg | echo "Exception:" . v:exception | echoh1 NONE
        return ""
    finally
        let &tags = _tags
    endtry

    " show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
"let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'
" 映射LookupFile 为,lk
nmap <leader>lt :LUTags<cr>
" 映射LuBufs为,ll
nmap <leader>lb :LUBufs<cr>
" 映射LUWalk为,lw
nmap <leader>lw :LUWalk<cr>
