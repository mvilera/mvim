" ######## Vundle.Vim
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.mvim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.mvim/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ericbn/vim-relativize'
Plugin 'tpope/vim-fugitive'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Put your non-Plugin stuff after this line
" ######## END OF Vundle.Vim

" ######## ColorScheme
colorscheme twilight256
" ######## END OF ColorScheme

" ######## AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
set showtabline=2
set noshowmode
" ######## END OF AirLine

" ######## VimNumbers
" set number
" ######## END OF VimNumbers

" ####### NERDTree
" autocmd vimenter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" ####### END OF NERDTree

" ####### NERDComments
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
" ####### END OF NERDComments

" ####### Leader Keybinds
let mapleader = "\\"
" ####### END OF Leader Keybinds 

" ####### Keybinds
map <C-k> :NERDTreeToggle<CR>
map <C-j> <plug>NERDCommenterToggle 
map <C-n> :bnext<CR>
" ####### END OF Keybinds

" ####### Misc
set tabstop=4
set shiftwidth=4
set expandtab
" ####### END OF Misc
