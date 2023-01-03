
" curl -fLo ~/.confg/nvim/autoload/plug.vim --create-dirs
"         \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.config/nvim/plugged')
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-powerline'
Plug 'ryanoasis/vim-devicons'

" fern
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'

" fzf
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'DevonMorris/telescope-docker.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" base
Plug 'mbbill/undotree'
Plug 'vim-scripts/vim-auto-save'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'ntpeters/vim-better-whitespace'

" other
Plug 'EdenEast/nightfox.nvim'
Plug 'skanehira/translate.vim'
Plug 'thinca/vim-quickrun'
Plug 'vim-jp/vimdoc-ja'
Plug 'lervag/vimtex'
Plug 'skanehira/preview-markdown.vim'
Plug 'skanehira/docker-compose.vim'
call plug#end()

let g:mapleader="\<space>"

" look
set number
set list
set showmatch
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set wrap
set matchtime=3
set laststatus=2

" serch, replace
set ignorecase
set smartcase
set wrapscan
set incsearch
set gdefault
set inccommand=split
nmap <Leader>re :%s/<C-R><C-W>//g<Left><Left>
nmap <Esc><Esc> <cmd>nohlsearch<cr>

" indent
set autoindent
set smartindent
set expandtab
set tabstop=3
set softtabstop=3
set shiftwidth=3

" completion
set wildmode=list:longest
set infercase
set wildmenu
set hlsearch
au FileType * setlocal formatoptions-=ro

" window
set splitbelow
set splitright
nmap sj <C-w>j
nmap sk <C-w>k
nmap sl <C-w>l
nmap sh <C-w>h
nmap ss <C-w>s <C-w>j
nmap sv <C-w>v <C-w>l

" Operation
set clipboard+=unnamed
set backspace=indent,eol,start
set hidden
set textwidth=0
set mouse=a
set completeopt=menu,menuone
nmap O :<C-u>call append(expand('.'), '')<cr>j
tmap <Esc> <C-\><C-n>
nmap <C-j> }
nmap <C-k> {
nmap <C-h> ^
nmap <C-l> $
nmap <C-;> %
nmap <C-s> <cmd>w<cr>
imap <C-s> <esc><cmd>w<cr>
nmap あ a
nmap い i
nmap お o

" log
set history=1000
set undofile
set undodir=~/.config/nvim/undodir
set noswapfile
set directory=.
set nobackup
set nowritebackup
set viminfo=

" other
filetype plugin indent on
set encoding=utf8
set ttimeoutlen=50
set helplang=ja
colorscheme nightfox
nmap <Leader>. <cmd>new ~/.config/nvim/init.vim<cr>


" ### plugin ###
" telescope
nmap ts <cmd>Telescope<cr>
nmap tf <cmd>Telescope find_files<cr>
nmap th <cmd>UndotreeToggle<cr>
imap <silent><expr> <cr> coc#pum#visible()?coc#pum#confirm() : "\<cr>"

" highlightedyank
let g:highlightedyank_highlight_duration = 150

" fern
let g:fern#renderer = 'nerdfont'
let g:fern#default_hidden=1
nmap ff :Fern . -reveal=% -drawer -toggle -width=40<cr>

" airline
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" quickrun
let g:quickrun_config={'*':{'split':''}}

" whitespace
let g:better_whitespace_enabled=0
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0

