:syntax on
:set nowritebackup
:set number
:set relativenumber
":set expandtab
":set noexpandtab
":set copyindent
":set preserveindent
":set shiftwidth=4
":set autoindent
":set smartindent
":set tabstop=4
":set smarttab
":set softtabstop=0
:set mouse=a
:set showcmd		" Show (partial) command in status line.
:set showmatch		" Show matching brackets.
:set ignorecase		" Do case insensitive matching
:set smartcase		" Do smart case matching
:set incsearch		" Incremental search
:set autowrite		" Automatically save before commands like :next and :make
:set nowrap
:set list
:set listchars=tab:│ ,trail:·
:%retab
":colorscheme desert

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nnoremap <C-[> :tabp<CR>
nnoremap <C-]> :tabn<CR>

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

Plug 'https://github.com/skywind3000/asyncrun.vim' "run commands diffrently

"Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
"Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
"Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
"Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
"Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
"Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal

set encoding=UTF-8
call plug#end()

nmap <F8> :TagbarToggle<CR>

"NerdTree section
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"COC settings
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


"Auto Compiling file handling
"nnoremap <C-R> :vsp <CR> :term python3 % <CR>
"nnoremap <C-W> :bd!<CR>

"Auto Compiling file handling
"let extension = expand('$:e')
"let extension = &filetype
"echo extension
"if extension=='python'
"  imap <F5> <Esc>:w<CR>:!clear;python3 %<CR>
"  map <F5> <Esc>:w<CR>:!clear;python3 %<CR>
"elseif extension=='ino'
"  imap <F5> <Esc>:w<CR>:!clear;make compile %<CR>
"  map <F5> <Esc>:w<CR>:!clear;make compile %<CR>
"  imap <F6> <Esc>:w<CR>:!clear;make upload %<CR>
"  map <F6> <Esc>:w<CR>:!clear;make upload %<CR>
"elseif extension=='c'
"  imap <F5> <Esc>:w<CR>:!clear;make clean;make compile<CR>
"  map <F5> <Esc>:w<CR>:!clear;make clean;make compile<CR>
"  imap <F6> <Esc>:w<CR>:!clear;make clean;make compile;make upload<CR>
"  map <F6> <Esc>:w<CR>:!clear;make clean;make compile;make upload<CR>
"endif


"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath=&runtimepath
source ~/.config/nvim/open.vim

":let $PYTHONUNBUFFERED=1
":autocmd FileType python :noremap <F5> :AsyncRun -raw python3 % <CR> 
":autocmd FileType sh  :noremap <F5> :AsyncRun bash % <CR>
":let g:asyncrun_open = 8 "create new window
":map <F12> :bw!<CR>

