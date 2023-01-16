--https://github.com/voldikss/vim-floaterm
vim.g.floaterm_width=0.95;
vim.g.floaterm_height=0.95;
vim.g.floaterm_gitcommit='floaterm';
vim.g.floaterm_autoinsert=1;
vim.g.floaterm_wintitle=0;
vim.g.floaterm_autoclose=1;
vim.g.floaterm_borderchars="─│─│╭╮╯╰";


-- vim.cmd("nnoremap   <silent>   <leader>ta    :FloatermNew<CR>");
vim.cmd("tnoremap   <silent>   <leader>ta    <C-\\><C-n>:FloatermNew<CR>");
vim.cmd("tnoremap   <silent>   <leader>tp    <C-\\><C-n>:FloatermPrev<CR>");
vim.cmd("tnoremap   <silent>   <leader>tn    <C-\\><C-n>:FloatermNext<CR>");
vim.cmd("tnoremap   <silent>   <leader>tt   <C-\\><C-n>:FloatermToggle<CR>");
vim.cmd("tnoremap   <silent>   <leader>tc   <C-\\><C-n>:FloatermKill<CR>");



