" Pathogen
execute pathogen#infect()

" Vundle
" https://github.com/gmarik/Vundle.vim
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" list plugins here
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/LustyJuggler'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'ivalkeen/nerdtree-execute'
Plugin 'bling/vim-airline'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on
let g:html_indent_inctags = "html,body,head,tbody,div,p"

syntax on
colorscheme daniels
set nowrap
set number

autocmd vimenter * NERDTree
" move the cursor to the file
autocmd VimEnter * NERDTree | wincmd p
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1

set noexpandtab
set copyindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
filetype indent on

" Setting Space to leader
let mapleader = "\<Space>"

" Save with Space-w
nnoremap <leader>w :w<CR>
" Quit with Space-q
nnoremap <leader>q :q<CR>

" Copy/pasting with space-y/space-p
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

:imap <C-Space> <Esc>

:command WQ wq
:command Wq wq
:command W w
:command Q q

" maybe some day
"noremap <Up> <nop>
"noremap <Down> <nop>
"noremap <Left> <nop>
"noremap <Right> <nop>

inoremap jj <Esc>

:set tags=./tags;

nmap <C-p> :CtrlP
nmap <C-j> <C-]>

set directory-=$HOME/tmp
set directory^=$HOME/tmp//
set backupdir-=$HOME/tmp
set backupdir^=$HOME/tmp//

" Indentation with tabs
:set noet ci pi sts=0 sw=4 ts=4

:set switchbuf+=usetab,newtab

