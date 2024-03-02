return {
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<C-p>', '<cmd>Telescope find_files<CR>', desc = 'telescope: find_files' },
      { '<C-g>', '<cmd>Telescope live_grep<CR>',  desc = 'telescope: live_grep' },
      { '<C-b>', '<cmd>Telescope buffers<CR>',    desc = 'telescope: buffers' },
    },
    config = function()
      require('telescope').setup({
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
          }
        }
      })

      require('telescope').load_extension('fzf')
    end,
  },
}
