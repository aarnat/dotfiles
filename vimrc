"General
set number
set linebreak
set showbreak=+++
set textwidth=79
set showmatch
"set spell
set visualbell
set ruler
set undolevels=1000
set backspace=indent,eol,start
set wildmenu
"allows mouse use
set mouse=a

"Backups
set backup
set backupdir=~/.vim/backup,/tmp,.
set directory=~/.vim/swp
set undodir=~/.vim/undo

"Search
set hlsearch
set smartcase
set ignorecase

"Indent
set autoindent  "local
set smartindent "local
set smarttab    "local
set expandtab   "local
set shiftround  "global
set tabstop=4
set softtabstop=4
set shiftwidth=4
"filetype plugin indent on

"ctags
"set tags=./git/tags;,tags;home
"set autochdir

"Folding
set foldmethod=indent
set foldnestmax=2

"Key Mapping
set pastetoggle=pp
inoremap ;; <Esc>

"better pane switching
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

"other
syntax on
colorscheme zellner

"autocmd BufWritePre * :%s/\t/    /g
autocmd BufWritePre * :%s/\s\+$//e
