" Vundler "
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-sensible'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'

call vundle#end()

filetype plugin indent on
" run :PluginInstall inside vim "

" generic stuff"
filetype plugin indent on
syntax on

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set number

let mapleader=" "

" easymotion "
" <leader><leader>b - upwards"
" <leader><leader>s - search
" <leader><leader>w - downwards"
map <Leader><Leader> <Plug>(easymotion-prefix)

" ctrl-p "
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" vim-go "
let g:go_play_open_browser = 0
let g:go_bin_path = expand("~/bin")

" eclim (support for YCM)"

let g:EclimCompletionMethod = 'omnifunc'

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
