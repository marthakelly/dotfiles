" Author: Martha Kelly Schumann
" Description: A minimal .vimrc based on  http://vim.wikia.com/wiki/Example_vimrc and research on the 'internet'
"---------------------------------------------------------
" pathogen 
"---------------------------------------------------------
" Pathogen needs to run before plugin indent on
filetype off

call pathogen#incubate()

call pathogen#infect()

" generate helptags for everything in 'runtimepath'
call pathogen#helptags()

filetype plugin indent on
"---------------------------------------------------------
" must have options
"---------------------------------------------------------
" I think nocompatible is set by default in user .vimrc, just not the system wide .vimrc, still researching...
set nocompatible

" attempt to determine the type of a file
filetype indent plugin on

" enable syntax highlighting 
syntax on

" hides buffers instead of closing them
set hidden

" custom mapping to get out of insert mode
inoremap jj <Esc>

" set timeout length to be 200ms in case I do want to type 'jj'
set timeoutlen=200

" command-line completion
set wildmenu

" show partial commands in the last line of the screen
set showcmd

" show search matches as you type
set incsearch

" modelines have historically been a source of security vulnerabilities
set nomodeline

"---------------------------------------------------------
" usability options
"---------------------------------------------------------
" use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" when no filetype-specific indenting is enabled, keep the same indent
" as the line you're currently on. Useful for READMEs, etc.
set autoindent

" prevent the cursor from changing the column when jumping to other lines within the window
set nostartofline

" do not navigate with arrow keys when in insert mode
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

"---------------------------------------------------------
" formatting defaults
" this works for me because I primarily work in html/css/js
"---------------------------------------------------------
" make tabs appear four spaces wide (default is 8 spaces)
set tabstop=2

"  set how many columns text is indented with reindent operations (<< and >>)
set shiftwidth=2

" set 4 spaces for python files
autocmd Filetype python setlocal ts=4 sts=4 sw=4

" pressing tab in insert mode will produce spaces
set expandtab

" show a vertical line at 80 chars (for Python)
set colorcolumn=80

"---------------------------------------------------------
" custom bindings
"---------------------------------------------------------
" press Ctrl-N twice to toggle line numbers in the left margin
nmap <C-N><C-N> :set invnumber <CR>
"---------------------------------------------------------
" NERDTree
"---------------------------------------------------------
nmap <C-U><C-u> :NERDTreeToggle <CR>
"---------------------------------------------------------
" swp files
"---------------------------------------------------------
set noswapfile
