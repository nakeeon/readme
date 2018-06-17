call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'fisadev/vim-isort'
Plug 'jiangmiao/auto-pairs'

" Color schemes
Plug 'joshdick/onedark.vim'

" On-demand loading Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'python-mode/python-mode', { 'branch': 'develop' }


" Initialize plugin system
call plug#end()

syntax on
colorscheme onedark
"set background=dark

set number
let mapleader = ","
let g:vim_isort_map = '<C-i>'
"let g:pymode_python = 'python3'

set hlsearch
set incsearch

set expandtab
set tabstop=2
"let g:ycm_key_list_select_completion = ['<Tab>']

" Mappings

map <C-n> : NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

" Powerline status line
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set t_Co=256
set showtabline=2
set noshowmode
