if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

  call dein#add('Shougo/dein.vim')

  " JavaScript
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')

  " Editor
  call dein#add('scrooloose/nerdtree')

call dein#end()

syntax on
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set cursorline
set number
