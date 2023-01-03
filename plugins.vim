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
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml'
Plug 'neoclide/coc-json'
Plug 'neoclide/coc-eslint'
Plug 'neoclide/coc-css'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'neoclide/coc-prettier'
Plug 'neoclide/coc-git'
Plug 'coc-extensions/coc-omnisharp'
Plug 'yaegassy/coc-html-css-support'
Plug 'josa42/coc-docker'
Plug 'iamcco/coc-angular'
Plug 'neoclide/coc-python'
Plug 'neoclide/coc-pairs'
Plug 'hashicorp/terraform-ls'

Plug 'prabirshrestha/vim-lsp'
Plug 'folke/which-key.nvim' 
Plug 'voldikss/vim-floaterm'
Plug 'neovim/nvim-lspconfig', {'do' : 'npm i -g pyright'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" or                                , { 'branch': '0.1.x' }
 
" For Linux update with `\ 'do': 'bash install.sh',`
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'powershell -executionpolicy bypass -File install.ps1',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'



call plug#end()
