local lsp = require("lsp-zero")
local cmp = require('cmp')
local null_ls = require('null-ls')
local null_opts = lsp.build_options('null-ls', {})

lsp.preset("recommended")

-- see :help lsp-zero.ensure_installed()
lsp.automatic_installation = true;
lsp.ensure_installed({  "pyright",  "angularls",  "arduino_language_server",  "astro",  "clangd",  "csharp_ls",  "omnisharp",  "cssls",  "dockerls",  "eslint",  "graphql",  "html",  "jsonls",  "tsserver",  "sumneko_lua",  "marksman",  "sqlls",  "tailwindcss",  "terraformls",  "yamlls",  "golangci_lint_ls" })

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = 'I'
    }
})

vim.diagnostic.config({
    virtual_text = true,
})

lsp.setup_nvim_cmp({
  documentation = {
    max_height = 15,
    max_width = 60,
    border = 'rounded',
    col_offset = 0,
    side_padding = 1,
    winhighlight = 'Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None',
    zindex = 1001
  }
})

lsp.setup()

-- =============================================================

null_ls.setup({
  on_attach = function(client, bufnr)
    null_opts.on_attach(client, bufnr)
  end,
  sources = {
    -- You can add tools not supported by mason.nvim
  }
})

-- LSP terraform 
--require('lspconfig').terraformls.setup{}
--vim.cmd [[ au BufWritePre *.tfvars lua vim.lsp.buf.format() ]]
--vim.cmd [[ au BufWritePre *.tf lua vim.lsp.buf.format() ]]

