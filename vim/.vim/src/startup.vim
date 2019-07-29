set number
set cursorline
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
" set list

execute pathogen#infect()
syntax on
filetype plugin indent on

" NERDTree conf
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let NERDTreeShowHidden=1

" airline conf
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1

" indent conf
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
