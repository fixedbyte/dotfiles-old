"" ######################################################
"" #	Basic configurations				            #
"" ######################################################

"" Neovim compatibility
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

"" Show numbers of the lines (Easy, the numbers at the left of the editor)
set number

"" Enable copy-paste (Copy-paste of the SO and editor)
set mouse=a

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

"" To always use the clipboard for all operations
set clipboard+=unnamedplus

"" Be iMproved
set nocompatible

filetype off

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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'chun-yang/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.vim'
Plug 'alvan/vim-closetag'
Plug 'kevinhwang91/rnvimr', { 'do': 'make sync' }
Plug 'mhinz/vim-signify'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"" Install gruvbox theme
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'prettier/vim-prettier'

call plug#end()

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'

call vundle#end()

set rtp+=~/.vim/bundle/youcompleteme

set termguicolors
lua << EOF
require('bufferline').setup {
  options = {
    mode = "buffers", -- set to "tabs" to only show tabpages instead
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    }
}
EOF

filetype plugin indent on

"" Set theme to use
autocmd vimenter * ++nested colorscheme gruvbox

"" Start python 3
let g:python3_host_prog = '/usr/bin/python3'

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

let g:ycm_auto_trigger = 1
