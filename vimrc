set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'mattn/emmet-vim'


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

Plugin 'shawncplus/phpcomplete.vim'

Plugin 'mileszs/ack.vim'

Plugin 'jwalton512/vim-blade'

Plugin 'StanAngeloff/php.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



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
set path+=**
set wildmenu
set grepprg=ack\ -k
setglobal complete-=i

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

let g:snipMate = { 'snippet_version' : 1 }

"let php_folding=1

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
nmap <leader>P :set nopaste<CR>

" YCM shortcuts
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jl :YcmCompleter GoToDeclaration<CR>

if filereadable("cscope.out")
    cs add cscope.out
elseif $CSCOPE_DB  != ""
    cs add $CSCOPE_DB
endif

set nocompatible


au FileType html setl sw=2 sts=2 expandtab
au FileType php setl sw=4 sts=4 expandtab foldmethod=manual
au FileType scss setl sw=2 sts=2 expandtab
au FileType ruby setl sw=2 sts=2 expandtab
au FileType python setl sw=4 sts=4 expandtab
au FileType eruby setl sw=2 sts=2 expandtab
au FileType css setl sw=2 sts=2 expandtab
au FileType javascript setl sw=2 sts=2 expandtab
au FileType less setl sw=2 sts=2 expandtab
au FileType sql setl sw=2 sts=2 expandtab
au FileType vue setl sw=2 sts=2 expandtab
au FileType wxml setl sw=2 sts=2 expandtab
au FileType wxss setl sw=2 sts=2 expandtab

au BufRead,BufNewFile *.wxml setfiletype html 
au BufRead,BufNewFile *.wxss setfiletype css
au BufRead,BufNewFile *.blade.php setfiletype html
