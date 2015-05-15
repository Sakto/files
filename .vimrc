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
Plugin 'fatih/vim-go'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'ivalkeen/nerdtree-execute'
Plugin 'bling/vim-airline'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-ragtag'
Plugin 'moll/vim-bbye'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'xsbeats/vim-blade'

call vundle#end()            " required

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
set smarttab
set autoindent
set cindent "Smart indent
"set wrap "Wrap lines

" Indentation with tabs
:set noet ci pi sts=0 sw=4 ts=4

" Setting Space to leader
let mapleader = "\<Space>"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

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

:imap jj <Esc>

nnoremap t <C-]>

:command WQ wq
:command Wq wq
:command W w
:command Q q

" Disabling the arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Vim-bbye
:nnoremap <leader>x :Bdelete<CR>

:set tags=./tags;

nmap <C-p> :CtrlP
nmap <C-b> :CtrlPBuffer<CR>
nmap <C-j> <C-]>
let g:ctrlp_custom_ignore = '\v[\/]\.(git|project|svn)$'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

set directory-=$HOME/tmp
set directory^=$HOME/tmp//
set backupdir-=$HOME/tmp
set backupdir^=$HOME/tmp//

:set switchbuf+=usetab,newtab

" ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase	
" Highlight search results
set hlsearch
" Hit esc to turn search highlighting off
nnoremap <esc> :noh<return><esc>

" Highlight current line
:set cursorline

" Edit snippets
nmap <leader>es :UltiSnipsEdit<cr>
" Add html indentation to blade syntax
autocmd BufRead,BufNewFile *.blade.php  runtime! indent/html.vim

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile



