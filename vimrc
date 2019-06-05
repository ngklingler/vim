set encoding=utf-8
set list listchars=tab:!·,extends:$,precedes:$,space:·  " Characters to indicate whitespace
set splitbelow splitright  " More sensible window splits
set tabstop=4 shiftwidth=4 expandtab  " Tabs are 4 spaces
set colorcolumn=80 " have a highlighted column for PEP8
set nowrap  " Don't wrap long lines
set showmatch " highlight matching (, [, {
set number " show line numbers
set noswapfile  " Disable swap files
set mouse=a " use mouse for selection, scrolling, eta
set hidden " allow hidden buffers
set hls ic is smartcase  " Highlight search results, ignore case on searches, search as you type
set foldmethod=indent  " Fold lines on same indent

" Things that are specific to nvim vs vim
if has("nvim")
    " TODO move deoplete to optional and load here, or maybe this does it
    let g:deoplete#enable_at_startup = 1
    set guicursor=  " So cursor is visible (block) in insert mode
else
    " Things that nvim has by default
    set nocompatible  " Don't force vi compatibility
    filetype plugin indent on  " filetype based indentation, if plugin exists for filetype load it
    set smartindent  " Indentation should be more filetype aware
    set autoindent  " Match indentation of above line
    set autoread  " Read in outside changes to file
    syntax on  " Enable syntax highlighting
endif

" Plugin settings
let g:netrw_dirhistmax = 0  " Stop netrw from saving a history file, below toggles netrw
map <C-n> :Lexplore<CR>
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
colorscheme onedark
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'python': ['~/.local/bin/pyls']
    \ }
" make it so error messages are not shown inline on screen
let g:LanguageClient_useVirtualText = 0
" make it so completions don't open a preview window
set completeopt-=preview

" Key mappings
" Map \ to : in normal mode (more ergonomic)
map <leader> :
" Map \\ to cycle through buffers (used to be :b#<CR> for last buffer)
map <leader><leader> :bn<CR>
" Toggle folds with q in normal mode
nmap q za
" Make backspace work in normal mode
nmap <BS> X
" Set = to switch windows in normal mode
nmap = <C-w><C-w>
" Make <Esc><Esc> clear search highlights
nmap <silent> <Esc><Esc> <Esc>:noh<CR><Esc>
" Tab cycles through autocompletions if the autocompletion menu is open
imap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Enter selects an autocompletion if in the autocompletion menu
imap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" Autocommands
autocmd BufLeave,FocusLost * silent! wall  " Autosave on buffer and focus change
autocmd BufWinEnter * silent! :%foldopen!  " Open all folds on buffer and window open

" load all packages now
packloadall
" load all helptags in package docs
silent! helptags ALL
