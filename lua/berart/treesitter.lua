--https://github.com/nvim-treesitter/nvim-treesitter 
-- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support
--https://github.com/nvim-treesitter/playground
require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all"
    ensure_installed = { "help", "diff", "hcl", "rust", "bash" , "c" , "c_sharp" , "cpp" , "css" ,"scss", "dockerfile" , "git_rebase" , "gitattributes" , "gitcommit" , "gitignore" , "javascript" , "html" , "json" , "lua" , "markdown" , "meson" , "python" , "sql" , "terraform" , "typescript" , "tsx", "yaml" , "yang" , "vim"},
  
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
  
    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,
  
    highlight = {
      -- `false` will disable the whole extension
      enable = true,

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
  }


  require('nvim-treesitter.install').compilers = { "clang" } -- , "gcc" }