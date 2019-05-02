" turn on file type based indentation, 4 space tabs, etc
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

map <C-n> :NERDTreeToggle<CR>

" use the mimimalist colorscheme found at https://github.com/dikiaap/minimalist
set t_Co=256
syntax on
colorscheme minimalist

set colorcolumn=80 " have a highlighted column for PEP8
map <leader> :
set hlsearch " highlight search matches
set showmatch " highlight matching (, [, {
set number " show line numbers
set mouse=a " use mouse for selection, scrolling, etc
