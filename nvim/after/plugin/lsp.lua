local lsp = require('lsp-zero')
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

local on_attach = function(client, bufnr)
  -- Format on save
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr, timeout_ms = 5000 })
      end,
    })
  end
end

lsp.preset('recommended')

lsp.ensure_installed({
  'golangci_lint_ls',
  'gopls',
  'lua_ls',
})

lsp.configure('gopls', {
  on_attach = on_attach
})

lsp.configure('lua_ls', {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
    },
  },
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})