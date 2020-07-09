set nocp
" Pathogen
" execute pathogen#infect()

" Vundle
" https://github.com/gmarik/Vundle.vim
set nocompatible
filetype on
filetype plugin indent on
autocmd FileType php set keywordprg=pman
set rtp+=~/vimfiles/bundle/Vundle.vim

call vundle#begin()

" list plugins here
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic' " Syntax checking
Plugin 'Raimondi/delimitMate' " Autocomplete for parenthesis etc.
Plugin 'kien/ctrlp.vim' " Awesomeness
Plugin 'bling/vim-airline' " Bottom statusbar
Plugin 'tpope/vim-repeat' " Adds . repeats to plugins (usually just limit to native commands)
Plugin 'tpope/vim-surround' " Commands to surround words/paragraphs/etc
Plugin 'tpope/vim-ragtag' " A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more | I have no idea what this plugin does..
Plugin 'moll/vim-bbye' " Closing buffers - commands
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets' " More snippets for ultisnips
Plugin 'xsbeats/vim-blade'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar' " F8 to see methods and vars in file

call vundle#end()            " required

" Windows
" set shell=cmd
let g:NERDTreeCopyCmd='cp -r'

" Select what has just been pasted
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

syntax on
set background=dark
colorscheme gruvbox
set nowrap
set number
set noexpandtab
set smarttab
set autoindent
set cindent "Smart indent

" Ctrl-P for tags
nnoremap <Leader>, :CtrlPTag<cr>

" Making backspace work on windows
set backspace=2
set backspace=indent,eol,start

autocmd VimEnter * NERDTree | wincmd p
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1

" Indentation with tabs
:set noet ci pi sts=0 sw=4 ts=4

" Setting Space to leader
let mapleader = "\<Space>"

let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsSnippetsDirectories=[$HOME . "/vimfiles/snips", $HOME . "/vimfiles/bundle/vim-snippets/snippets", $HOME . "/vimfiles/snips"]

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
vmap <C-d> <C-b>

nnoremap t <C-]>
nnoremap <Leader>t :tn<CR>
" Jump to tag definition in new vertical split
nnoremap <C-w>t :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>
:set tags=./tags;

" Disabling the arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Vim-bbye
:nnoremap <leader>x :Bdelete<CR>
" Delete all buffers and reopen NERDTree
:nnoremap <leader>r :%bd <Bar> NERDTree<CR>

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
" Incremental search
set incsearch
" Highlight search results
set hlsearch
" Hit esc to turn search highlighting off
nnoremap <esc> :noh<return><esc>

" Highlight current line
:set cursorline
" Highlight current column
:set cursorcolumn

" Edit .vimrc
nmap <leader>v :e /home/daniel/Web/configfiles/.vimrc<cr>

" Add html indentation to template files
autocmd BufRead,BufNewFile *.blade.php setlocal ft=html syn=php

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"command TODO :!grep -nriE --include \*.php --exclude-dir vendor 'TODO|FIXME' .

" Fix broken arrow keys in insert mode
" :set term=builtin_ansi

nmap <F8> :TagbarToggle<CR> 

" Show linenumbers
:set nu
" Relative linenumbers
:set relativenumber

set encoding=utf-8

set guifont=Consolas:h12
