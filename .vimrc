" Pathogen "
execute pathogen#infect()

" Go support "
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim

" generic stuff"
filetype plugin indent on
syntax on

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set number

" Encoding "
if has("multi_byte")
     set encoding=utf-8
     setglobal fileencoding=utf-8
     set nobomb
     set termencoding=utf-8
     set fileencodings=utf-8,ucs-bom,iso-8859-15,iso-8859-3
else
     echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

" colors "
set background=dark
colorscheme vivify1

" NERDTree "
nnoremap <Leader>n :NERDTreeToggle<CR>

" Gundo "
nnoremap <Leader>u :GundoToggle<CR>

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

" Golint ( https://github.com/golang/lint ) "
function! s:GoLint()
  cexpr system("golint " . shellescape(expand('%')))
  copen
endfunction
command! GoLint :call s:GoLint()
