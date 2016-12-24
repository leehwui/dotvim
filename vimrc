syntax enable
syntax on
set t_Co=256
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set nu
set expandtab
set background=dark
colorscheme molokai
set hlsearch
set showmatch
set wrap
set textwidth=80
set fo+=mB
set lbr
set clipboard=unnamed
set backspace=indent,eol,start
set vb t_vb=
set mouse=a

let mapleader=","
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_new_tab=1

let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open=1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif

" customized keyboard shortcuts:

" short cuts for cscope:
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>


" jump to next grep result, works with vimgrep
nmap <leader>n :cn<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>s :vimgrep /
nmap <leader>p :set paste<CR>
nmap <leader>P :set paste<CR>


if filereadable("cscope.out")
    cs add cscope.out
elseif $CSCOPE_DB  != ""
    cs add $CSCOPE_DB
endif

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim


au FileType html setl sw=2 sts=2 expandtab
au FileType php setl sw=4 sts=4 expandtab
au FileType scss setl sw=2 sts=2 expandtab
au FileType ruby setl sw=2 sts=2 expandtab
au FileType python setl sw=4 sts=4 expandtab
au FileType eruby setl sw=2 sts=2 expandtab
au FileType css setl sw=2 sts=2 expandtab
au FileType javascript setl sw=2 sts=2 expandtab
au FileType less setl sw=2 sts=2 expandtab
au FileType sql setl sw=2 sts=2 expandtab

call vundle#begin()

"Plugin 'gmarik/Vundle.vim'

Plugin 'mattn/emmet-vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-scripts/taglist.vim'

Plugin 'tpope/vim-surround'

Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'tomtom/tlib_vim'

Plugin 'garbas/vim-snipmate'

Plugin 'honza/vim-snippets'

Plugin 'vim-airline/vim-airline'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'pangloss/vim-javascript'

Plugin 'posva/vim-vue'


call vundle#end()

filetype plugin indent on

