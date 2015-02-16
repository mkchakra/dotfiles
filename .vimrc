set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'quanganhdo/grb256'
Bundle 'wgibbs/vim-irblack'
Bundle 'kchmck/vim-coffee-script'
Bundle 'moll/vim-node'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'jnwhiteh/vim-golang'
Bundle 'dgryski/vim-godef'
Bundle 'davidhalter/jedi-vim'
Plugin 'wincent/command-t'
Plugin 'Shougo/vimproc.vim'
Bundle 'vim-scripts/pylint-mode'
Bundle 'bling/vim-airline'
Bundle 'saks/gpicker'
Bundle 'sickill/vim-monokai'
Bundle 'vim-scripts/taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-markdown'
Plugin 'ryanss/vim-hackernews'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
call vundle#end() 
syntax on
filetype plugin indent on
filetype plugin on
" set completeopt-=preview
" custom stuff starts here
"
let g:pymode_doc_bind = "<C-S-d>"
let g:godef_split=3
au FileType go au BufWritePre <buffer> Fmt
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1
let mapleader=","
noremap <leader>o <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>
" syntax enable
"set background=dark
" colorscheme grb256
set wildignore=*.swp,*.bak,*.pyc,*.class,*.tmp
 nmap <F8> :TagbarToggle<CR>
 nmap <C-n> :TagbarOpen j<CR>
 set foldmethod=indent   "fold based on indent
 set foldnestmax=10      "deepest fold is 10 levels
 set nofoldenable        "dont fold by default
 set foldlevel=1         "this is just what i use
 " custom stuff ends here"
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
let g:jedi#goto_assignments_command = "gt"
let g:jedi#goto_definitions_command = "gd"
let g:CommandTCancelMap='<C-x>'
autocmd BufWritePre *.go Fmt
nnoremap <leader><leader><leader> :ccl<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>ww :wq<cr>
nnoremap <leader><leader> :q!<cr>
let g:PyLintCWindow = 1
let g:PyLintSigns = 1
let g:PyLintOnWrite = 1
aug QFClose
      au!
        au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
    aug END
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
nnoremap <silent> <C-p> :CommandT<CR>
nnoremap <silent> <C-b> :CommandTBuffer<CR>
let g:CommandTMaxHeight = 15
set pastetoggle=<F10>
syntax enable
colorscheme monokai
set t_Co=256
set autoindent
set number
let g:airline_powerline_fonts = 1
set laststatus=2
let g:tagbar_autofocus = 1
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
