"" ######################################################
"" #	Basic configurations				#
"" ######################################################

"" Show numbers of the lines
set number

"" Enable copy-paste
set mouse=a

"" Let Vim use the system clipboard
set clipboard=unnamedplus

"" Enable syntax and highlighting
syntax enable

"" Shows the command that you are already typing
set showcmd

"" The ruler is where are you in the document (row and column)
set ruler

"" Simply encoding the text for compatibility with the UTF-8 standard
set encoding=utf-8

"" Finds and jump to matching brackets
set showmatch

"" It will set tabstops every 4 spaces
set sw=4

"" The numbers of the lines are relative to the current line
set relativenumber

"" Shows the statusbar always
set laststatus=0

"" Shows the mode what we're currently editing in
set showmode

"" Sets the column at the right, It's coloured and defines the max space
set colorcolumn=150

"" Set the width of the numbers at the left of the screen
set nuw=6

"" Do not make backup files
set nobackup

"" Do not write intermediate swap files
set noswapfile

"" Change the terminal's title
set title

"" Remember 1000 commands
set history=1000

"" Shows search matches as you type
set incsearch

"" Status bar of 1 row high
set cmdheight=1

"" ######################################################
"" #	Install and manage plugins			#
"" ######################################################

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
Plug 'ryanoasis/vim-devicons'
Plug 'prettier/vim-prettier'
"" Docker
Plug 'skanehira/docker.vim'

call plug#end()

"" Set theme to use
autocmd vimenter * ++nested colorscheme gruvbox

"" Assign values to variables
"" Vim Airline configurations
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1

"" Gruvbox theme configurations
let g:gruvbox_termcolors = 16
let g:gruvbox_contrast_dark = 'hard'
