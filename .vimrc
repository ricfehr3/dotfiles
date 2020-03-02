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
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
" with ranger don't forget to actuall install it lmao
" sudo apt-get install ranger
Plugin 'francoiscabrol/ranger.vim'
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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" youcompleteme
let g:ycm_autoclose_preview_window_after_completion = 1

"source $VIMRUNTIME/vimrc_example.vim

colorscheme darkblue
"colorscheme elflord

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set guifont=Consolas:h13
set number
set relativenumber

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey

"augroup project
"    autocmd!
"    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
"augroup END


" Enable folding
set foldmethod=syntax
set foldlevel=99

set encoding=utf-8

" We need a new leader
let mapleader=" "

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-t><C-n>     :tabnew<CR>

" autogenerate ctags on new write
au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &

" reopen last closed spit
nmap <c-s-t> :vs<bar>:b#<CR>

" testing my skill
map <leader>l :vsp<CR>
map <leader>r :botright :vsp<CR>
" Ranger
let g:ranger_map_keys = 0
map <leader>v :botright :vsp<CR> :Ranger<CR> 
map <leader>f :Ranger<CR> 
map <leader>t :RangerWorkingDirectoryNewTab<CR> 

" | Ranger


" windows specific extra files nonsense
" If you are having trouble, make that temp dir dingle
" set backupdir=$VIMRUNTIME\\temp\\
" set directory=$VIMRUNTIME\\temp\\
" set undodir=$VIMRUNTIME\\temp\\
" silent execute '!del "'.$VIMRUNTIME.'\temp\*~"'

" path to directory where library can be found
"let g:clang_library_path='/usr/lib/llvm-7/lib/libclang.so.1'
"let g:clang_user_options='|| exit 0'
"let g:clang_complete_auto = 1
"let g:clang_complete_copen = 1
"let g:clang_debug = 1
