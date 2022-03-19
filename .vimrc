"" ######################################################
"" #	Basic configurations				            #
"" ######################################################

"" Show numbers of the lines (Easy, the numbers at the left of the editor)
set number

"" Enable copy-paste (Copy-paste of the SO and editor)
set mouse=a

"" Let Vim use the system clipboard (Ctrl+C and Ctrl+V inside and outside of Vim)
set clipboard=unnamedplus

"" Enable syntax and highlighting (The syntax of the current programming lang)
syntax enable

"" Shows the command that you are already typing (Shows if you type any character in normal mode)
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
set colorcolumn=80

"" Set the width of the numbers at the left of the screen
set nuw=6

"" Do not make backup files
set nobackup

"" Do not write intermediate swap files (Old feature, it appears to be unnecessary)
set noswapfile

"" Change the terminal's title (The title of the screen in GUI version)
set title

"" Remember 1000 commands (The history of the commands to be saved)
set history=1000

"" Shows search matches as you type (Autocompletion)
set incsearch

"" Commands space in 1 row (location at the bottom of the editor)
set cmdheight=1

"" Active a line to know where is the cursor
set cursorline

"" Sets the color of the cursorline (The horizontal line coloured at the current row)
set background=dark

"" File encoding
set fileencoding=utf-8

"" Easy, the wrap of code
set nowrap

"" Wrap text when width id close to 100 characters (If the text is more than 100 chars, it wraps)
set textwidth=100

"" Autoindent
set autoindent

"" Cause files to be hidden instead of closed
set hidden

"" Sets the width of the tab (4 spaces)
set expandtab
set tabstop=4
set shiftwidth=4
set showtabline=4

"" ######################################################
"" #	Install and manage plugins			            #
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
"" Install gruvbox theme
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
let g:gruvbox_color_column = 'bg1'
let g:gruvbox_sign_column = 'bg1'
let g:gruvbox_vert_split = 'bg1'
let g:gruvbox_guisp_fallback = 'bg'
