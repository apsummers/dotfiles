set nocompatible
" imap jk <Esc>
let mapleader=","
set wildmenu
set incsearch

call plug#begin('~/.vim/bundle')
Plug 'altercation/vim-colors-solarized'
Plug 'lukerandall/haskellmode-vim', { 'for': 'haskell' }
Plug 'bling/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'wellle/targets.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
call plug#end()

" vim-gitgutter
set updatetime=250

" syntastic's recommended defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
au FileType json setlocal shiftwidth=2 tabstop=2
au FileType php setlocal shiftwidth=4 tabstop=4
