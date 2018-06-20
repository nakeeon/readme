call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Multiple Plug commands can be written in a single line using | separators
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'

Plug 'Valloric/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'fisadev/vim-isort'
Plug 'majutsushi/tagbar'
Plug 'fisadev/FixedTaskList.vim'
Plug 'tpope/vim-surround'
Plug 'lepture/vim-jinja'
Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'nvie/vim-flake8'

" Color schemes
Plug 'joshdick/onedark.vim'

" On-demand loading Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

syntax on
colorscheme onedark
"set background=dark

set number
let mapleader = ","
let g:vim_isort_map = '<C-i>'
let g:vim_isort_python_version = 'python3'
let g:flake8_show_in_file = 1
let g:flake8_show_in_gutter = 1

set hlsearch
set incsearch
set showmatch
let python_highlight_all = 1
set autoindent

set expandtab
set tabstop=2
set shiftwidth=2
"let g:ycm_key_list_select_completion = ['<Tab>']

" Mappings

map <C-n> : NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
nmap <F8> :TagbarToggle<CR>

" Powerline status line
python3 from powerline.vim import setup as powerline_setup 
python3 powerline_setup() 
python3 del powerline_setup 
set laststatus=2
set t_Co=256
set showtabline=2
set noshowmode

" Auto commands
autocmd BufWritePost *.py Isort
autocmd BufWritePost * GitGutter
autocmd BufWritePost *.py call Flake8()
