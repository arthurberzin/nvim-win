require("berart/remap")
require("berart/packer")
require("berart/treesitter")
require("berart/nightfox-thema")


vim.opt.number = true;
vim.opt.autoindent = true;
vim.opt.autoread = true;
vim.opt.tabstop=4;
vim.opt.shiftwidth=4;
vim.opt.smarttab = true;
vim.opt.softtabstop=4;
vim.opt.mouse="a";
vim.opt.encoding='UTF-8';
-- set to true or false etc.
--vim.opt.relativenumber = true; -- sets vim.opt.relativenumber
vim.opt.number = true; -- sets vim.opt.number
vim.opt.spell = false; -- sets vim.opt.spell
vim.opt.signcolumn = "auto"; -- sets vim.opt.signcolumn to auto
vim.opt.wrap = false; -- sets vim.opt.wrap



-- Automatically open alpha when the last buffer is deleted and only one window left \\ must add vim.opt.autoread = true;
vim.cmd [[ au BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) && winnr('$') == 1 | exec 'Alpha' | endif ]]

