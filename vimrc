syntax on
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set nu
set expandtab
set background=light
colorscheme murphy
set hlsearch
set showmatch
set tw=78
set fo+=mB
set lbr


let Tlist_Use_Right_Window=1

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"Plugin 'gmarik/Vundle.vim'

Plugin 'mattn/emmet-vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-scripts/taglist.vim'

call vundle#end()

filetype plugin indent on

au FileType html setl sw=2 sts=2 expandtab
au FileType scss setl sw=2 sts=2 expandtab
au FileType ruby setl sw=2 sts=2 expandtab
au FileType python setl sw=4 sts=4 expandtab
au FileType eruby setl sw=2 sts=2 expandtab
au FileType css setl sw=2 sts=2 expandtab
