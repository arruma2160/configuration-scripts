" VIM Configuration File

set exrc                        " allow for per-project configuration files
set secure
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible                " disable vi compatibility
set autoindent                  " use indentation of previous line
set smartindent                 " use intelligent indentation for C
set backspace=indent,eol,start  " set delete and supr
set tabstop=4                   " tab width is 4 spaces
set shiftwidth=4                " indent also with 4 spaces
set expandtab                   " expand tabs to spaces
"set textwidth=80               " wrap lines at 80 chars.
set t_Co=256
syntax on                       " turn syntax highlighting on
set wildmenu                    " turn on the completion menu
"set number                      " turn line numbers on
set relativenumber
set showmatch                   " highlight matching braces
set hlsearch                    " highlight search
set ignorecase                  " ignore case when searching
set nospell                     " spell settings
set laststatus=2
set hidden


" Highlight current line cursor
set cursorcolumn
set cursorline
hi CursorLine term=NONE cterm=NONE ctermbg=230
hi CursorColumn term=NONE cterm=NONE ctermbg=230

"
" Enhanced keyboard mappings
"
" in insert mode maps jj with <Esc>
imap jh <Esc>

" main mapping, go to first matching ctag
map tt <c-]>
" cscope search
map cc <c-\>
" main mapping, go back from definition ctag/cscope
map TT <c-t>
" move forward and back through matching ctags
map <c-p> :tprevious<CR>
map <c-n> :tnext<CR>


set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'    " Vundle package (github)
Plugin 'scrooloose/nerdtree.git'
Plugin 'Buffergator'
Plugin 'taglist.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/tagbar'
Plugin 'kien/ctrlp.vim'
filetype plugin indent on   " Turn our filetype functionality back on

" Currently using vim-airline
" buffer file information
" set modeline
" set ls=2
" set statusline=
" set statusline+=%<
" set statusline+=%2*[%n%H%M%R%W]%*
" set statusline+=%F
" set statusline+=%=%1*%y%*%*
" set statusline+=%10(line=%l/%L,col=%c%)
" set statusline+=\ %P

let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':t'


let g:syntastic_python_python_exec = "/usr/bin/python3"
let g:syntastic_cpp_compiler_options = ' -std=c++17'
let g:syntastic_quiet_messages = { 'regex': 'E402' }

autocmd BufNewFile,BufRead *.asm set filetype=nasm
so ~/.vim/cscope_maps.vim   " sourcing scope_maps.vim

colorscheme pablo
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkred guibg=darkred

" Put a red line in column 80
set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey

" Highlight trailing white spaces
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/
