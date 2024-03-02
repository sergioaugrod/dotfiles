return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter.configs')

    configs.setup({
      ensure_installed = { 'go', 'lua', 'vim', 'markdown', 'markdown_inline', 'bash', 'regex' },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
