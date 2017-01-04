if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

  call dein#add('Shougo/dein.vim')

  " Multi Cursor
  call dein#add('terryma/vim-multiple-cursors')

  " JavaScript
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')
  call dein#add('othree/yajs.vim')

  " Editor
  call dein#add('scrooloose/nerdtree')

  " Pug
  call dein#add('digitaltoad/vim-pug.git')

  " Color Theme
  call dein#add('arcticicestudio/nord-vim')

  " UI Plugin
  call dein#add('itchyny/lightline.vim')

  " Git
  call dein#add('airblade/vim-gitgutter')

  " Lint
  call dein#add('neomake/neomake')
  autocmd! BufWritePost * Neomake
  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
  let g:neomake_javascript_eslint_exe = substitute(g:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
call dein#end()

nnoremap <silent><C-t> :NERDTreeToggle<CR>

syntax on
set cindent
set expandtab
set tabstop=2
set shiftwidth=2
set cursorline
set number
set clipboard=unnamed,autoselect
set backspace=indent,eol,start
" Highlight searched word
set hlsearch
" Show invisible characters
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

autocmd InsertLeave * set nopaste

colorscheme nord

set laststatus=2
