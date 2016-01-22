set nocompatible
filetype off
imap jk <Esc>
let mapleader=","

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lukerandall/haskellmode-vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'rust-lang/rust.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

" vim-colors-solarized
set background=light
let g:solarized_termtrans=1
let g:solarized_termcolors=16
colorscheme solarized

" vim-airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
set laststatus=2
set guifont=Source\ Code\ Pro\ for\ Powerline:h13

" haskellmode-vim
au BufEnter *.hs compiler ghc
let g:haddock_browser="/Users/andysummers/Applications/Safari.app"
let g:syntastic_haskell_checkers = ['ghc_mod', 'hlint']

" dev niceities
syntax on
set expandtab
set tabstop=4
set relativenumber
set number
set colorcolumn=80

" file specific changes
au FileType ruby setlocal shiftwidth=2 tabstop=2
au FileType html setlocal shiftwidth=2 tabstop=2
au FileType javascript setlocal shiftwidth=2 tabstop=2
au FileType java setlocal shiftwidth=4 tabstop=4
au FileType groovy setlocal shiftwidth=4 tabstop=4
au FileType eruby setlocal shiftwidth=2 tabstop=2
