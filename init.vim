let mapleader=" "

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8
:set completeopt-=preview

source $VIMRUNTIME/mswin.vim
behave mswin


source $LOCALAPPDATA/nvim/plugins.vim
source $LOCALAPPDATA/nvim/NERDTree.vim
source $LOCALAPPDATA/nvim/coc.vim
source $LOCALAPPDATA/nvim/floaterm.vim
source $LOCALAPPDATA/nvim/hot-keys.vim
source $LOCALAPPDATA/nvim/terraform.vim
source $LOCALAPPDATA/nvim/which-key.vim


"Set Popup menu colors
hi Pmenu ctermfg=white ctermbg=8

" lspconfig setup
lua <<EOF
  require'lspconfig'.pyright.setup{}
EOF
