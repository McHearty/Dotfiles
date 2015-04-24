set nocompatible

filetype indent plugin on

syntax enable</pre>

set hls

set ai

set confirm

set wildmenu

set showcmd

set hlsearch

set ignorecase
set smartcase

set backspace=indent,eol,start

set autoindent

set nostartofline

set ruler
set laststatus=1

set visualbell

set mouse=a

set showcmd
set cmdheight=2

set number
set numberwidth=5

set pastetoggle=<F11>

set diffopt+=vertical

set shiftwidth=2
set softtabstop=2
set expandtab
set shiftround
set expandtab

set list listchars=tab:»·,trail:·,nbsp:·

set textwidth=80
set colorcolumn=+1


" Status Line
set statusline=
set statusline+=%-3.3n\
set statusline+=%f\
set statusline+=%h%m%r%w
set statusline+=[%{strlen(&ft)?&ft:'none'},
set statusline+=%{strlen(&fenc)?&fenc:&enc},
set statusline+=%{&fileformat}]
set statusline+=%=
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\
set statusline+=%b,0x%-8B\
" set statusline+=%-14.(%l,%c%V%)\ %<%
set laststatus=2
