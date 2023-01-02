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

"Set Popup menu colors
hi Pmenu ctermfg=white ctermbg=8


call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'cj/vim-webdevicons'
Plug 'tc50cal/vim-terminal'
Plug 'terryma/vim-multiple-cursors'
Plug 'valsorym/.del.vim-tagbar'
Plug 'tribela/vim-transparent'
Plug 'Mofiqul/vscode.nvim'
Plug 'https://github.com/benatespina/development.svg.icons'
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc-yaml'
Plug 'neoclide/coc-json'
Plug 'neoclide/coc-eslint'
Plug 'neoclide/coc-css'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'neoclide/coc-prettier'
Plug 'neoclide/coc-git'
Plug 'iamcco/coc-angular'
Plug 'folke/which-key.nvim' 
Plug 'voldikss/vim-floaterm'
 
call plug#end()


" Configure Hot Keys
let g:floaterm_keymap_new    = '<space>4'
let g:floaterm_keymap_prev   = '<space>2'
let g:floaterm_keymap_next   = '<space>3'
let g:floaterm_keymap_toggle = '<space>1'

nnoremap <space><tab> :NERDTreeToggle<CR>
nnoremap <space>8 :TagbarToggle<CR>
nnoremap <Space><Space> :WhichKey<CR>

nnoremap <space>g :FloatermNew lazygit<CR>
nnoremap <space>d :FloatermNew lazydocker<CR>
nnoremap <space>r :FloatermNew ranger<CR>
nnoremap <space>y :FloatermNew bpytop<CR>
nnoremap <space>n :FloatermNew ncdu<CR>


" Settign up Plugins

let NERDTreeShowHidden=1

" Configure Floaterm
let g:floaterm_width=0.95
let g:floaterm_height=0.95

let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1





"Set Floaterm colors
hi Floaterm guibg=black blend=30
hi FloatermBorder guibg=black guifg=black blend=30'

lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

