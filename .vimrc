" Vundler "
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'Shougo/neocomplete.vim'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-sensible'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'jeetsukumaran/vim-nefertiti'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-scripts/adt.vim'

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

" enable things like: match Green /<%=.*%>/
" to highlight specific parts of text
au BufNewFile,BufRead *.erb highlight Green ctermfg=green

" use sh filetype for .erb templates
au BufNewFile,BufRead *.erb set filetype=sh
au BufNewFile,BufRead *.erb match Green /<%=.*%>/

" easymotion "
" <leader><leader>b - upwards"
" <leader><leader>s - search
" <leader><leader>w - downwards"
map <Leader><Leader> <Plug>(easymotion-prefix)

" Buffers "
nnoremap <Leader><left> :bp<CR>
nnoremap <Leader><right> :bn<CR>
nnoremap <Leader><up> :buffers<CR>
nnoremap <Leader><down> :MBEbw<CR>

" F7 to toggle between showing tabs, end of line characters, etc. "
noremap <F7> :set list!<CR>
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<,nbsp:_

" ctrl-p "
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" default to regexp mode (isku would find moIsKu but not IlkaSpuKU) "
let g:ctrlp_regexp = 1

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
set t_Co=256
let g:solarized_termcolors=256
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
" colorscheme nefertiti
" colorscheme vivify1

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

:command! -nargs=+ NGrep execute 'silent Ggrep! <args>' | cwindow

" ts = 'number of spaces that <Tab> in file uses' sts = 'number of spaces that <Tab> uses while editing' sw = 'number of spaces to use for (auto)indent step'
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

if has("autocmd")
    filetype indent on
endif
