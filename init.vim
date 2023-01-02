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

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

vmap <C-f>  <Plug>(coc-format-selected)
nmap <C-f>  <Plug>(coc-format-selected)

"Use to import awesome-vim-colorschemes themes
"source $LOCALAPPDATA\nvim-data\plugged\awesome-vim-colorschemes\colors\dogrun.vim

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
Plug 'voldikss/vim-floaterm'
Plug 'neoclide/coc.nvim'

Plug 'neoclide/coc-yaml'
Plug 'neoclide/coc-json'
Plug 'neoclide/coc-eslint'
Plug 'neoclide/coc-css'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'neoclide/coc-prettier'
Plug 'neoclide/coc-git'
Plug 'iamcco/coc-angular'
 
call plug#end()

let g:floaterm_width=0.9
let g:floaterm_height=0.9

let g:floaterm_keymap_new    = '<C-F4>'
"let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<C-F3>'
let g:floaterm_keymap_toggle = '<C-F2>'

nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <C-F8> :TagbarToggle<CR>


hi Floaterm guibg=black blend=30
hi FloatermBorder guibg=black guifg=black blend=30'
