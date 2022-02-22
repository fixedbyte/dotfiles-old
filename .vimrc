"" jjkkkkkka Basic configurations
set number
set mouse=a
set numberwidth=1
set clipboard=1
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set showmode

"" Install plugins
call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'

call plug#end()

"" Set theme to use
autocmd vimenter * ++nested colorscheme gruvbox

"" Assign values to variables
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:gruvbox_termcolors = 16
