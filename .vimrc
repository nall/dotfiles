""  
call plug#begin('~/.vim/plugged')
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'altercation/vim-colors-solarized'
call plug#end()

if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  autocmd BufNewFile,BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost * if line("'\"") | exe "'\"" | endif
endif

set bs=indent,eol,start " allow backspacing over everything
set history=50		      " keep 50 lines of command line history
set ruler		            " show the cursor position all the time
set nu                  " line numbers on by default
set vb t_vb=            " no visual bell
set laststatus=2        " include status line at bottom
set hlsearch            " highlight the current search term

set shiftwidth=2        " :help tabstop method 2
set tabstop=2           " :help tabstop method 2
set expandtab           " :help tabstop method 2

set background=dark
set t_Co=16             " Use a 16 color terminal since Terminal/iTerm manages solarized colors
colorscheme solarized

set guifont=Essential\ PragmataPro:h13

