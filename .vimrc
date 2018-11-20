" Auto install if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'https://github.com/jamessan/vim-gnupg.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'https://github.com/rodjek/vim-puppet.git'
Plug 'https://github.com/dbeniamine/cheat.sh-vim.git'
Plug 'https://github.com/scrooloose/nerdtree.git'

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
autocmd! User goyo.vim echom 'Goyo is now loaded!'

" List ends here. Plugins become visible to Vim after this call.
colorscheme evening
call plug#end()

let g:airline_theme='murmur'
set number
set expandtab
set tabstop=2
set hidden
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>

" Buffer manipulations
map <F2> :bprevious<CR>
map <F3> :bnext<CR>

" Syntastic configuration
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_puppet_checkers= ['puppet-lint']
let g:syntastic_java_javac_config_file_enabled = 1
