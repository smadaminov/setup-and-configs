" Settings
set number
colorscheme elflord
set guicursor=
set cursorline
set cursorcolumn

" Use four spaces instead of tab
set tabstop=4
set shiftwidth=4
set expandtab

" Permanent undo even after close
set undodir=~/.vimdid
set undofile

" vim-plug section
call plug#begin('~/.local/share/nvim/plugged')

" GUI stuff
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'machakann/vim-highlightedyank'

" Fuzzy search
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Semantic language support
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'ncm2/ncm2'

" Plugin for Rust
Plug 'rust-lang/rust.vim'

call plug#end()
