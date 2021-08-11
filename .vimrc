" enter the current millenium
set nocompatible


" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

" The title option sets the title of the terminal window to the name of the file you are editing

autocmd BufEnter * let &titlestring = ' ' . expand("%:t")             
set title


" open another directory file irrespective of current directory
set autochdir

" Going to the end and the beginning of a line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>




" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on


" Highlight cursor line underneath the cursor horizontally.
" set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn


" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=75

" Add numbers to each line on the left-hand side.
set number

" enable syntax and plugins (for netrw)
syntax enable

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific. filetype indent plugin on


" fuzzy search
set path +=**

" Display all matching files when we tab complete
set wildmenu

" new settings. 

set showcmd " Show (partial) command in status line.

set showmatch " Show matching brackets.

" Show the mode you are on the last line.
set showmode


" Automatically wrap text that extends beyond the screen length.
set wrap




" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>


" Highlight matching search patterns
set hlsearch


" settings for python file
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
"    \ set fileformat=unix


" settings for js, html, css files
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" You also want to avoid extraneous whitespace. You can have VIM flag that for you so that it’s easy to spot and then remove:

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" utf-8 support

set encoding=utf-8

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" STATUS LINE ------------------------------------------------------------


" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F 


" Set status line display
" Set status line display

" Use a divider to separate the left side from the right side.
set statusline+=%=


" The current tag can also be displayed with tagbar instead of taglist with:
" set statusline +=\ [Fun(%{tagbar#currenttag('%s','')})]

" Set status line display
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Status line right side.
set statusline+=\ file:\ %Y\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c



" Status bar
set laststatus=2


