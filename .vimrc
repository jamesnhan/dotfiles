" Disable vi compatibility (emulation of old bugs)
set nocompatible

filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=/home/james/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/unite.vim'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on

" Set airline variables
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#right_sep=''
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols_branch = ''
let g:airline_symbols_readonly = ''
let g:airline_symbols_linenr = ''

" Set syntastic variables
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1

" Set ctrlspace variables
set hidden

" Set UTF-8 Encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Allow backspacing

" Set UTF-8 Encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Allow backspacing
set backspace=indent,eol,start

" Use indentation of previous line
set autoindent
" Use intelligent indentation for C(++)
set smartindent

" Configure tabwidth and insert spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Wrap lines at 120 characters
set textwidth=120

" Turn syntax highlighting on
set t_Co=256
syntax on

" Set colorscheme and dark mode
colorscheme gruvbox
set background=dark

" Turn line relative line numbering on
set number
set rnu

" Highlight matching braces
set showmatch

" Highlight while searching
set incsearch

" Set scrolloff
set scrolloff=999

" Set autoread
set autoread

" Set the status bar and ruler
set laststatus=2
set ruler
set wildmenu

" Intelligent comments
set comments=sl:/*,mb:\*,elx:\*/

" In normal mode, F2 will save the file
nmap <F2> :w<CR>

" In insert mode, F2 will exit insert, save, re-enter insert
imap <F2> <ESC>:w<CR>i

" Switch between header and source files with F4
nnoremap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Recreate tags file with F5
" map <F5> :!ctags -R -c++-kinds=+p -fields=+iaS -extra=+q .<CR>

" Create doxygen comment with F6
" map <F6> :Dox<CR>

" Build using makeprg with F7
" map <F7> :make<CR>

" Build using makeprg with Shift + F7
" map <S-F7> :make clean all<CR>

" Open tagbar with F8
nmap <F8> :TagbarToggle<CR>

" Goto definition with F12
" map <F12> <C-J>

