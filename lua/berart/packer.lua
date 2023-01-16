-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
    "EdenEast/nightfox.nvim",
    config = function()
      vim.cmd('colorscheme nightfox')
    end
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('voldikss/vim-floaterm')
  use{
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
      {"mfussenegger/nvim-dap"},
      {"jose-elias-alvarez/null-ls.nvim"},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'}, --https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
      {"jayp0521/mason-nvim-dap.nvim"},
      {"jayp0521/mason-null-ls.nvim"},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use("folke/which-key.nvim")
  use("kyazdani42/nvim-web-devicons")
  use("goolord/alpha-nvim")
  use ('tamton-aquib/staline.nvim')
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
    }
  use 'famiu/bufdelete.nvim'
end)


--https://github.com/tpope/vim-surround
-- https://github.com/windwp/nvim-autopairs
-- https://github.com/cohama/lexima.vim
--https://github.com/lukas-reineke/indent-blankline.nvim
--https://github.com/numToStr/Comment.nvim
--https://github.com/phaazon/hop.nvim.
-- https://github.com/lewis6991/impatient.nvim
-- https://github.com/Mofiqul/vscode.nvim/blob/main/README.md