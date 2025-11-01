return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      go = { 'goimports', 'gofumpt' },
    },
    format_on_save = {
      timeout_ms = 5000,
      lsp_format = 'fallback',
    },
  },
}
