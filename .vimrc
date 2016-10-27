" --------------------------------------------------
" Initial Setting
" --------------------------------------------------

" $ mkdir -p ~/.vim/bundle
" $ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" $ vi ~/.vimrc
" Open vim and run the following command ":NeoBundleInstall"

" --------------------------------------------------
" NeoBundle Setting
" --------------------------------------------------

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" --------------------------------------------------
"
" --------------------------------------------------

" Haml support
NeoBundle 'tpope/vim-haml'
" Rails support
NeoBundle 'tpope/vim-rails'
" Auto Insert to 'end'
NeoBundle 'tpope/vim-endwise'
" Color in log file
NeoBundle 'vim-scripts/AnsiEsc.vim'
" Auto insert
NeoBundle 'kana/vim-smartinput'


" --------------------------------------------------
" Indent Setting
" --------------------------------------------------

NeoBundle 'nathanaelkane/vim-indent-guides'

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#A9A9A9
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#DCDCDC

" --------------------------------------------------
" Theme Support [1]
" --------------------------------------------------

NeoBundle 'jpo/vim-railscasts-theme'

set background=dark

" --------------------------------------------------
" 
" --------------------------------------------------

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

syntax on

" --------------------------------------------------
" 
" --------------------------------------------------

set ruler   "Display ruler
set number  "Display line numbers

" --------------------------------------------------
"
" --------------------------------------------------

call neobundle#end()

" --------------------------------------------------
" Theme Support [2]
" --------------------------------------------------

colorscheme railscasts
