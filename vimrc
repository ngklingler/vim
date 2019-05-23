set nocompatible  " Don't force compatibility with vi
filetype plugin indent on  " Filetype based indentation, if plugin exists for filetype load that too
set autoread  " Automatically read in outside changes
set encoding=utf-8
set list listchars=tab:<·>,extends:$,precedes:$,space:·  " Characters to indicate whitespace
set splitbelow splitright  " More sensible window splits
set tabstop=4 shiftwidth=4 expandtab  " Tabs are 4 spaces
set colorcolumn=80 " have a highlighted column for PEP8
set nowrap  " Don't wrap long lines
set showmatch " highlight matching (, [, {
set number " show line numbers
set mouse=a " use mouse for selection, scrolling, eta
set hidden " allow hidden buffers
set ruler  " Show cursor position in bottom right status bar
set hls ic is  " Highlight search results, ignore case on searches, search as you type
set foldmethod=indent  " Fold lines on same indent
set backspace=indent,eol,start " backspace working in insert mode

" Plugin settings
map <C-n> :NERDTreeToggle<CR>
" Signify: version control gutter, use git, update realtime
let g:signify_vcs_list = ['git']
let g:signify_realtime = 1
set signcolumn=yes  " Keep sign column open even if no git changes
" Set colorscheme to onedark, hide end of buffer ~, use 256 colors
packadd! onedark.vim
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
" let g:onedark_terminal_italics=1
autocmd ColorScheme * call onedark#extend_highlight("Normal", { "bg": { "cterm": 232, "gui": "#080808", "cterm16": 0 } })
syntax on " enable syntax highlighting
colorscheme onedark

" Key mappings
" Map \ to : in normal mode (more ergonomic)
map <leader> :
" Map \\ to switch to last buffer (should I make this next buffer instead)
map <leader><leader> :b#<CR>
" Toggle folds with q in normal mode
nmap q za
" Make backspace work in normal mode
nmap <BS> X
" Set = to switch windows in normal mode
nmap = <C-w><C-w>
" Make <Esc><Esc> clear search highlights
nmap <silent> <Esc><Esc> <Esc>:noh<CR><Esc>

" Autocommands
autocmd BufLeave,FocusLost * silent! wall  " Autosave on buffer and focus change
autocmd BufWinEnter * silent! :%foldopen!  " Open all folds on buffer and window open

" load all packages now
packloadall
" load all helptags in package docs
silent! helptags ALL
