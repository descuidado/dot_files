" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
let extension = expand('%:e')

"if &filetype ==# 'py'
"  autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"  autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"endif
if extension=='py'
  imap <F5> <Esc>:w<CR>:!clear;python3 %<CR>
  map <F5> <Esc>:w<CR>:!clear;python3 %<CR>
elseif extension=='ino'
  imap <F5> <Esc>:w<CR>:!clear;make compile %<CR>
  map <F5> <Esc>:w<CR>:!clear;make compile %<CR>
  imap <F6> <Esc>:w<CR>:!clear;make upload %<CR>
  map <F6> <Esc>:w<CR>:!clear;make upload %<CR>
elseif extension=='c'
  imap <F5> <Esc>:w<CR>:!clear;make clean;make compile<CR>
  map <F5> <Esc>:w<CR>:!clear;make clean;make compile<CR>
  imap <F6> <Esc>:w<CR>:!clear;make clean;make compile;make upload<CR>
  map <F6> <Esc>:w<CR>:!clear;make clean;make compile;make upload<CR>
endif

set nowrap
set relativenumber
"set expandtab
set shiftwidth=4
set autoindent
set smartindent
set tabstop=4
set list

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

inoremap <Space><Space> <Esc>/<++><Return>"_c4l
inoremap ;i <i></i><Space><++><Esc>FiT>i
inoremap ;P <?php echo  ?><++><Esc>F T>i
inoremap ;p <p></p><Space><++><Esc>FpT>i
inoremap ;ta <table class="form-table"><Return><Tab><tr><Return><Tab><th><Return><Tab><label for="<++>"><Return><BackSpace></th><Return><td><Return><Tab><input type="text" name="<++>" id="<++>" value="<++>"><Return><BackSpace></td><Return><BackSpace></tr><Return><BackSpace></table><Return><++><Esc><Home>7ki
"inoremap ;img <image src="<++>" alt="<++>"><++><Esc><Home>i
inoremap ;img <image src="" alt="<++>"><++>F"T>i
inoremap ;a <a href="<++>" target="<++>"><++><Esc><Home>i
inoremap ;l <input type="text" name="<++>" id="<++>" value="<++>"><++><Esc><Home>i

"inoremap ;th <th></th><Space><++><Esc>FtT>i
"inoremap ;td <td></td><Space><++><Esc>FtT>i
"inoremap ;ta <td></td><Space><++><Esc>FtT>i





"set listchars=tab:>-
"set listchars=tab:├─,trail:·
set listchars=tab:│ ,trail:·
"set listchars=tab:╠═,trail:·
"set listchars=tab:▓░,trail:·
"set listchars=tab:▌ ,trail:·
"set listchars=tab:≡ ,trail:·
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:SuperTabClosePreviewOnPopupClose = 1







"vundle plugin section
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Add plugins here which you want to add
call vundle#end()
filetype plugin indent on

let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \}

