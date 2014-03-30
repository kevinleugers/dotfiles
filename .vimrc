set nocompatible
filetype off	" required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)!
Bundle 'gmarik/vundle'

" My bundles
Bundle 'tpope/vim-rails.git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdtree'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-commentary'
Bundle 'croaky/vim-colors-github'

source ~/.vim/rspec

runtime macros/matchit.vim
filetype indent plugin on
syntax on
let mapleader = " "
let g:mapleader = " "
set relativenumber
set showcmd
set ruler
map <C-n> :NERDTreeToggle<CR>

" Setting filetype whitespace
set expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2

" show tabs/return chars whitespace. use :set list to show in vim
set list listchars=tab:>>

" vim-rspec mappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
