execute pathogen#infect()
filetype plugin indent on

" first things first..
"let mapleader = ","
set nocompatible
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set textwidth=0
set backspace=indent,eol,start
set encoding=utf-8
set fillchars+=vert:\ 

let loaded_matchparen=1 "do not highlight opening paren


set ruler "always show cursor

" fix for typoes
:command WQ wq
:command Wq wq
:command W w
:command Q q

" indent
set autoindent
set smartindent
set copyindent
set preserveindent

" backup dirs
set nobackup
set nowritebackup
set noswapfile
set undolevels=1000
set updatecount=100

" colours
syntax on
syntax enable
"let g:onedark_termcolors=256
"let g:onedark_termtrans = 1
"set t_Co=256
"set background=dark

filetype on
filetype indent on
filetype plugin on

" wildmenu
set wildmenu
set wildmode=list:longest

set visualbell
set clipboard=unnamed
"set notitle
set ttyfast
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set number
"set mouse=a
set showcmd
set nostartofline
set scrolloff=2
set hidden
set laststatus=2

set complete=.,w,b,u,U,t,i,d
set completeopt=menu,longest,preview

" automatically cd to current dir
" set autochdir

" highlight current line
set cul

" w!! will ask for sudo
cmap w!! %!sudo tee > /dev/null %

" keybindings
nmap j gj
nmap k gk

set pastetoggle=<F2>
set iskeyword-=_

autocmd FileType ruby set sw=2

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" gundo
nnoremap <F5> :GundoToggle<CR>


" airline stuff
"let g:airline_theme='zenburn'

" nerdtree crap
let NERDTreeQuitOnOpen=0
map <C-\> :NERDTreeToggle<CR>
map <C-n> :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd VimEnter * NERDTree

" vim-markdown
let g:vim_markdown_folding_disabled=1

" ctrlp
set wildignore+=*.so,*.swp,*.zip,*.class,*.jar
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_custom_ignore = {
    \ 'dir':    '\v[\/](\.(git|hg|svn)|node_modules|bower_components|target)$',
    \ 'file':   '',
    \ 'link':   '',
    \ }

" syntastic
"let g:syntastic_check_on_open=1
"let g:syntastic_enable_signs=1
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_wq = 0
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['standard']



let g:jsx_ext_required = 0
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2

