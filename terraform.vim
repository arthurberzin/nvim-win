lua <<EOF
  require'lspconfig'.terraformls.setup{}
EOF

autocmd BufWritePre *.tfvars lua vim.lsp.buf.format()
autocmd BufWritePre *.tf lua vim.lsp.buf.format()
