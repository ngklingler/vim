set nocompatible " don't force compatibility with vi
filetype plugin indent on " filetype based indentation, if plugin exists for filetype load that too
set nowrap " don't wrap long lines
set tabstop=4 " tab spaces
set shiftwidth=4 " indentation spaces
set expandtab " expand tab into spaces
set smartindent " indentation should be more filetype aware
set autoindent " match indentation of above line
set autoread " automatically read in outside changes
set scrolloff=3 " start scrolling 3 lines before horizontal border
set sidescrolloff=3 " same as above for vertical
set encoding=utf-8

"plugin settings
map <C-n> :NERDTreeToggle<CR>
let g:signify_vcs_list = ['git']
let g:signify_realtime = 1
" use the mimimalist colorscheme found at https://github.com/dikiaap/minimalist
set t_Co=256
syntax on
colorscheme minimalist

set colorcolumn=80 " have a highlighted column for PEP8
map <leader> :
map <leader><leader> :b#<CR>
set hlsearch " highlight search matches
set showmatch " highlight matching (, [, {
set number " show line numbers
set mouse=a " use mouse for selection, scrolling, eta
set hidden " allow hidden buffers
