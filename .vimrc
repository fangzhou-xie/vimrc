set nocp
filetype off
"if exists('$DOTFILES') 
"  source $DOTFILES/vim/autoload/pathogen.vim
"  source $DOTFILES/vim/vimrc
"endif
"execute pathogen#infect()
"syntax on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"filetype plugin indent on

" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-sensible'
Plugin 'ervandew/supertab'

" use vimtex
Plugin 'lervag/vimtex'
Plugin 'scrooloose/nerdtree'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/STL-Syntax'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'tell-k/vim-autopep8'
Plugin 'kiteco/plugins'
"color scheme
Plugin 'flazz/vim-colorschemes'
Plugin 'aonemd/kuroi.vim'
Plugin 'chase/focuspoint-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
call vundle#end()            " required
filetype plugin indent on    " required

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set background=dark   "or use the light theme: set background=light
colorscheme kuroi

let python_highlight_all=1
let g:SimpylFold_docstring_preview=1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
syntax on
set wildmenu
set hlsearch
set nowrap
set number
set shellslash
set autochdir
set guifont=YaHei\ Consolas\ Hybrid\ 11.5
set encoding=utf8
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
set guicursor=i:ver25-iCursor
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
let g:autopep8_disable_show_diff=1

set foldmethod=indent
set foldlevel=99
" set foldmethod=syntax
let g:indent_guides_start_level=2
nnoremap <space> za
inoremap <C-e> <C-o>A
"let g:autopep8_ignore="E501,W293"


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetsDir=$HOME . "/.vim/bundle/vim-snippets/UltiSnips"
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]
"let g:ultisnips_python_style=doxygen
setlocal spell
set spelllang=en_us
"set spelllang=nl,en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line
