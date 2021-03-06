set shell=bash
set clipboard=unnamed
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'vim-airline/vim-airline'
"Plugin 'w0rp/ale'
Plugin 'neomake/neomake'
Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'tmhedberg/SimpylFold'
Plugin 'wincent/Command-T'
Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
"Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'lervag/vimtex'
Plugin 'vim-latex/vim-latex'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
"Plugin 'kien/ctrlp.vim'
"Plugin 'wincent/command-t'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline'
Plugin 'scrooloose/nerdcommenter'
" Experimental vim arduino development
"Plugin 'tclem/vim-arduino'
""Default: /Applications/Arduino.app/Contents/Resources/Java
"let g:vim_arduino_library_path = /path/to/arduino/installation
""Default: result of `$(ls /dev/tty.* | grep usb)`
"let g:vim_arduino_serial_port = /my/serial/port
" Plugin 'davidhalter/jedi-vim'
let g:Powerline_symbols = 'fancy'
Plugin 'davidhalter/jedi-vim'
Plugin 'xuhdev/vim-latex-live-preview'
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'lualatex'
let g:pymode_python = 'python3'
set laststatus=2

" Testing
Plugin 'myusuf3/numbers.vim'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" fzf
map <leader>t :FZF

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required
filetype plugin indent on    " required

imap jj 

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Underline shortcut
nmap <C-u>	<Esc>yypVr-
"Quick save
noremap <Leader>w :update
noremap <Leader>wm :update:!make
noremap <Leader>wq :wq
"Quick make
noremap <Leader>m :!make
"Next wrong word
noremap <Leader>sn [s
"Add word to wordlist
noremap <Leader>sg zg
"Split fast
nnoremap <Leader>sv :vsplit
nnoremap <Leader>sh :split

:set noexpandtab
:set tabstop=4
:set shiftwidth=4

set relativenumber
set number
set encoding=utf-8
set autoread

"Enable folding
" set foldmethod=indent
" set foldlevel=1
"Folding with Spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

"pretty code
let python_highlight_all=1
syntax on

"colorscheme checker
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif
"switch theme
call togglebg#map("<F5>")
imap <C-L> <Plug>Tex_LeftRight
imap <C-N> <Plug>Tex_InsertItemOnThisLine	
" vim clientserver
" if clientserver not installed (check with :version),
" simply install gvim instead of vim
"if empty(v:servername) && exists('*remote_startserver')
"    call remote_startserver('VIM')
"endif




"Testing:
set clipboard=unnamedplus
map <Leader>i gg=G<C-o><C-o>
