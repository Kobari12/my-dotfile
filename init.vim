
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
" other
Plug 'EdenEast/nightfox.nvim'
Plug 'skanehira/translate.vim'
Plug 'vim-jp/vimdoc-ja'
Plug 'lervag/vimtex'
Plug 'skanehira/preview-markdown.vim'
Plug 'skanehira/docker-compose.vim'
call plug#end()

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
set inccommand=split
nmap <Leader>re :%s;\<<C-R><C-W>\>;g<Left><Left>;
nmap <Esc><Esc> :nohlsearch<CR>

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

" Operation
set clipboard+=unnamed
set backspace=indent,eol,start
set hidden
set textwidth=0
set mouse=a
set splitright
let g:mapleader="\<space>"
nmap O :<C-u>call append(expand('.'), '')<Cr>j
tmap <Esc> <C-\><C-n>
nmap <C-j> }
nmap <C-k> {
nmap <C-h> ^
nmap <C-l> $
nmap <C-;> %
nmap <C-s> <cmd>w<CR>
imap <C-s> <esc><cmd>w<CR>
nmap sj <C-w>j
nmap sk <C-w>k
nmap sl <C-w>l
nmap sh <C-w>h
nmap ss <C-w>s sj
nmap sv <C-w>v sl
nmap あ a
nmap い i

" log
set history=1000
set undofile
set undodir=~/.config/nvim/undodir
set swapfile
set directory=.
set nobackup
set nowritebackup  
set viminfo=

" other
filetype plugin indent on
set syntax=on
set encoding=utf8
set ttimeoutlen=50
set helplang=ja
nmap <Leader>. :new ~/.config/nvim/init.vim<CR>
colorscheme nightfox
let g:highlightedyank_highlight_duration = 150

" plugin
nmap ts <cmd>Telescope<cr>
nmap tf <cmd>Telescope find_files<cr>
nmap th <cmd>UndotreeToggle<cr>
imap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

let g:fern#renderer = 'nerdfont'
let g:fern#default_hidden=1
nmap ff :Fern . -reveal=% -drawer -toggle -width=40<CR>

nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {'0':'0 ','1':'1 ','2':'2 ','3':'3 ',
                                                      \'4':'4 ','5':'5 ','6':'6 ',
                                                      \'7': '7 ','8':'8 ','9':'9 '}

