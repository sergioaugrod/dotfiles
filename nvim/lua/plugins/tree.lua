return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<leader>t', '<cmd>NvimTreeToggle<cr>', desc = 'NeoTree' }
  },
  config = function()
    require('nvim-tree').setup({
      filters = {
        dotfiles = true,
      },
      actions = {
        open_file = {
          quit_on_open = false,
          resize_window = true,
          window_picker = {
            enable = false,
          },
        },
      }
    })
  end,
}
