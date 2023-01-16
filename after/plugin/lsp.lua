local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.automatic_installation = true;

lsp.ensure_installed({
  "pyright",
  "angularls",
  "arduino_language_server",
  "astro",
  "clangd",
  "csharp_ls",
  "omnisharp",
  "cssls",
  "dockerls",
  "eslint",
  "graphql",
  "html",
  "jsonls",
  "tsserver",
  "sumneko_lua",
  "marksman",
  "sqlls",
  "tailwindcss",
  "terraformls",
  "yamlls",
  "golangci_lint_ls",
})

lsp.set_preferences({
    suggest_lsp_servers = false,
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

lsp.on_attach(function(client, bufnr)
  if client.name == "eslint" then
      vim.cmd.LspStop('eslint')
      return
  end
end)

lsp.setup()



-- LSP terraform 
require('lspconfig').terraformls.setup{}

vim.cmd [[ au BufWritePre *.tfvars lua vim.lsp.buf.format() ]]
vim.cmd [[ au BufWritePre *.tf lua vim.lsp.buf.format() ]]