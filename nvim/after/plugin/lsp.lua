local lsp = require('lsp-zero')
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

local on_attach = function(client, bufnr)
  if client.supports_method('textDocument/formatting') then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    -- Format on save
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr, async = true })
      end,
    })
    -- Remove trailing whitespace on save
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = { '*' },
      command = [[%s/\s\+$//e]],
    })
  end
end

lsp.preset('recommended')

lsp.ensure_installed({
  'golangci_lint_ls',
  'gopls',
  'lua_ls',
  'terraformls',
})

lsp.configure('gopls', { on_attach = on_attach })
lsp.configure('terraformls', { on_attach = on_attach })

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

-- To avoid issues with Copilot auto complete
local cmp_mappings = lsp.defaults.cmp_mappings()
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({ mapping = cmp_mappings })
lsp.setup()

vim.diagnostic.config({ virtual_text = true })
