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
Plugin 'cohama/lexima.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'cormacrelf/vim-colors-github'
Plugin 'ericbn/vim-relativize'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'w0rp/ale'
Plugin 'gabrielelana/vim-markdown'
Plugin 'othree/yajs.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin '907th/vim-auto-save'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
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
let g:deoplete#enable_at_startup = 1

" ######## ColorScheme
"" use a slightly darker background, like GitHub inline code blocks
let g:github_colors_soft = 1

" more blocky diff markers in signcolumn (e.g. GitGutter)
let g:github_colors_block_diffmark = 0
colorscheme github
" ######## END OF ColorScheme

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='tomorrow'

set showtabline=2
set noshowmode

let g:auto_save = 1  " enable AutoSave on Vim startup


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
nnoremap <silent> <expr> <C-k> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
"map <C-k> :NERDTreeToggle<CR>
map <C-j> <plug>NERDCommenterToggle 
map <C-n> :bnext<CR>
map <A-p> :FZF<CR>
map <A-Left> <C-T>
map <A-Right> <C-]>
" ####### END OF Keybinds


" ####### Misc
set tabstop=2
set shiftwidth=2
set expandtab
let g:markdown_enable_spell_checking = 0
set nu
" ####### END OF Misc

augroup filetype javascript syntax=javascript
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

" ####### Header templates
au bufnewfile *.sh 0r ~/.mvim/headers/sh_header.template
