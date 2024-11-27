"General
set number
set linebreak
set showbreak=+++
set textwidth=80
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
filetype plugin indent on

"Folding
set foldmethod=indent
set foldnestmax=4
set foldcolumn=1

"Key Mapping
set pastetoggle=ppp
inoremap ;; <Esc>

"better pane switching
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

"Color
syntax on
colorscheme elflord

"Tabs to spaces on save
autocmd BufWritePre * :%s/\t/    /ge
"Delete trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
"Change Line Endings to Linux Style
"autocmd BufWritePre * :%s///ge

