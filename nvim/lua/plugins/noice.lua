return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  keys = {
    { '<leader>nd', '<cmd>NoiceDismiss<CR>', desc = 'Dismiss noice message' },
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  config = function()
    require('notify').setup({
      background_colour = '#000000',
    })

    require('noice').setup({
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
        hover = { enabled = false },
        signature = { enabled = false },
      },
      presets = {
        bottom_search = true,         -- use a classic bottom cmdline for search
        command_palette = true,       -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false,           -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false,       -- add a border to hover docs and signature help
      },
      routes = {
        {
          filter = {
            event = 'msg_show',
            any = {
              { find = '%d+L, %d+B' },
              { find = '; after #%d+' },
              { find = '; before #%d+' },
              { find = '%d fewer lines' },
              { find = '%d more lines' },
              { find = 'written' },
            },
          },
          opts = { skip = true },
        },
      },
    })
  end,
}
