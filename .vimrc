set nu
set syntax=on
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
"inoremap { {<CR>}<ESC>O
if has("syntax")

    syntax on

endif
set autoindent
set tabstop=4
set tags+=tags
autocmd FileType python set tabstop=4 | set expandtab | set autoindent
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set path=./**
set mouse=a
set mousehide

" highlight the cursor "
set cuc
set cul
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

" ctags jump globally "
set cscopetag
