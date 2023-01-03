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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""" Telescope Hotkeys """"""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
