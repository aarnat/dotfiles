"General
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
"set spell
set visualbell
set ruler
set undolevels=1000
set backspace=indent,eol,start
set wildmenu
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
filetype plugin indent on

"folding
set foldmethod=indent
set foldnestmax=2

"key mapping
inoremap ;; <Esc>

"other
syntax on
colorscheme darkblue

