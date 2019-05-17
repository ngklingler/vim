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
autocmd BufLeave,FocusLost * silent! wall " autosave on buffer and focus change

"plugin settings
map <C-n> :NERDTreeToggle<CR>
let g:signify_vcs_list = ['git']
let g:signify_realtime = 1
set signcolumn=yes " keep sign column open even if no git changes
" set colorscheme
packadd! onedark.vim
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
" let g:onedark_terminal_italics=1
autocmd ColorScheme * call onedark#extend_highlight("Normal", { "bg": { "cterm": 232, "gui": "#080808", "cterm16": 0 } })
syntax on
colorscheme onedark

set colorcolumn=80 " have a highlighted column for PEP8
map <leader> :
map <leader><leader> :b#<CR>
set hlsearch " highlight search matches
set showmatch " highlight matching (, [, {
set number " show line numbers
set mouse=a " use mouse for selection, scrolling, eta
set hidden " allow hidden buffers

set foldmethod=indent
autocmd BufWinEnter * silent! :%foldopen!
" in normal mode, use q to toggle folds
nmap q za
" make backspace work in normal mode
nmap <BS> X
set backspace=indent,eol,start " backspace working in insert mode
let g:python_highlight_all=1 " vim polyglot highlighting
