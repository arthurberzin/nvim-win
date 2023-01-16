--https://neovim.io/doc/user/map.html#%3Amap
vim.g.mapleader = " ";

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true };
    if opts then
        options = vim.tbl_extend("force", options, opts);
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options);
end


-- Navigation between window
map("n", "<A-h>", "<C-w>h");
map("n", "<A-j>", "<C-w>j");
map("n", "<A-k>", "<C-w>k");
map("n", "<A-l>", "<C-w>l");

--Resizing window
map("n", "<A-S-h>", "<C-w><");
map("n", "<A-S-l>", "<C-w>>");
map("n", "<A-S-j>", "<C-w>-");
map("n", "<A-S-k>", "<C-w>+");

--Moving window
map("n", "<A-C-h>", "<C-w>H");
map("n", "<A-C-l>", "<C-w>L");
map("n", "<A-C-j>", "<C-w>J");
map("n", "<A-C-k>", "<C-w>K");



map("n", "<C-s>", ":w<cr>");