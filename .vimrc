" Pathogen "
execute pathogen#infect()

" Go support "
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim

" generic stuff"
filetype plugin indent on
syntax on

" colors "
set background=dark
colorscheme vivify1

" tagbar "
nmap <F8> :TagbarToggle<CR>

" gotags for tagbar ( https://github.com/jstemmer/gotags ) "
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
