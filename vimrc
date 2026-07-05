set shiftwidth=2
set expandtab
set signcolumn=yes
set updatetime=300
set nowrap
set mouse=a
set sidescrolloff=8
set sidescroll=2
set number
set cursorline
set showmode
set showcmd

colorscheme desert


inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : "\<TAB>"
inoremap <silent><expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
