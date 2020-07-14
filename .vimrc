" Vundle configuration

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" my plugins

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'itchyny/vim-gitbranch'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'hzchirs/vim-material'
Plugin 'airblade/vim-gitgutter'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'prettier/vim-prettier'
Plugin 'dense-analysis/ale'

call vundle#end()            " required
filetype plugin indent on    " required

" Ale
let g:ale_python_pylint_options =
    \ '--rcfile=/.repo_requirements/linit_hook/travis/cfg/travis_run_pylint_vim.cfg --valid_odoo_versions=12.0'
let g:ale_python_flake8_options =
    \ '--config=/.repo_requirements/linit_hook/travis/cfg/travis_run_flake8.cfg'

" Vim Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,vue,xml EmmetInstall

" GitGutter settings
set updatetime=100
let g:gitgutter_max_signs = 500
set signcolumn=yes

" Ligthline Plugin configuration
set noshowmode
set laststatus=2

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" Vim material

syntax on
set background=dark
colorscheme vim-material

if (has("termguicolors"))
  set termguicolors
endif

" Spell chekcs
set spell spelllang=en,es

" Split navigation

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Identation

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set colorcolumn=119

" Search
set incsearch
set hlsearch

" Vim GUI
set cursorline                  " Highlight current line
highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode

" Git commit messages
autocmd FileType gitcommit setlocal spell textwidth=72

" Relative numbers

:set number relativenumber
:augroup numbertoggle
: autocmd!
: autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
: autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END

" Keybindings insert mode
imap jj <esc>
imap jk <esc>
imap kj <esc>
