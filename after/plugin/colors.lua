function ColorMyPencils(color) 
	color = color or "nightfox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" , fg = "none"  })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none" })
	-- :verbose hi WhichKeyFloat , To get property setup place
	vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "none", fg = "none" })
	vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", fg = "none" })
	
	
	
	vim.api.nvim_command("hi FloatermBorder guifg=#71839b");
	vim.api.nvim_command("hi Floaterm guifg=#dcdfe4");

	-- cterm= bold | none | underline 
	-- ctermfg= 1-255  
	-- ctermbg= 1-255   
	-- guibg=#000000  
	-- guifg=#ffffff  
	-- guisp=#df0000 
	-- gui= bold | none | underline
end

ColorMyPencils()