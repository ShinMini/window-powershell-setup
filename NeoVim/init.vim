" @Author(ShinMini)
" link: https://github.com/ShinMini/Terminal-Decoration

" 아래는 vim 기본 설정을 위한 코드입니다.
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

" 아래는 vim 플러그인 설정을 위한 코드 입니다.

call plug#begin(“~/.vim/plugged”)
 “ Plugin Section
 Plug 'dracula/vim'             " 처음 사용하기 무난한 컬러 스킴입니다.
 Plug 'ryanoasis/vim-devicons'  " nerd tree와 함께 지원하는 vim splitter(창분할) 플러그인입니다.
 Plug 'SirVer/ultisnips'        " 손쉬운 snippets를 제공해주는 플러그인입니다. -1
 Plug 'honza/vim-snippets'      " 손쉬운 snippets를 제공해주는 플러그인입니다. -2
 Plug 'scrooloose/nerdtree'     " 유명하죠 ㅎㅎ 저는 ctrl + N 을 사용해 널드트리 파일 탐색기를 사용합니다.
 Plug 'preservim/nerdcommenter' " out line commenting을 도와주는 플러그인입니다.
 Plug 'mhinz/vim-startify'      " 시작페이지 관련 다양한 configuration을 제공해주는 플러그인입니다.
 Plug 'neoclide/coc.nvim', {'branch': 'release'} " 자동완성 플러그인입니다.
call plug#end()


" 아래는 vim에서 단축키를 지정하는 방법입니다.
" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>