return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        -- have a single statusline at bottom of neovim instead of one for every window
        globalstatus = true,
      }
    })
  end,
}
