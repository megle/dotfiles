" Manuel's Vim configuration.

set nocompatible                  " Must come first because it changes other options.

call pathogen#infect()            " Use pathogen

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers. 
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=5                   " Show 5 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs

set list                          " Show invisibles
set listchars=tab:▸\ ,eol:¬       " Use the same symbols as TextMate for tabstops and EOLs

set mouse=a                       " vim also supports a mouse

set laststatus=2                  " Show the status line all the time

" Show buffer number, filetype, fileformat and fileencoding in statusline
set statusline=[%n]\ [%f]\ %w%y%r%m[%{&fileformat}][%{&fileencoding}]\ %=\ %l/%L,%-5c\ %P\ 

" Or use vividchalk
colorscheme desert

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

if has("gui_running")
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar 
  set guifont=Consolas:h12
endif

