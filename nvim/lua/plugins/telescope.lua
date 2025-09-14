return {
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<C-p>',      '<cmd>Telescope find_files<CR>',           desc = 'telescope: find_files' },
      { '<C-g>',      '<cmd>Telescope live_grep<CR>',            desc = 'telescope: live_grep' },
      { '<C-b>',      '<cmd>Telescope buffers<CR>',              desc = 'telescope: buffers' },
      { '<leader>fs', '<cmd>Telescope lsp_document_symbols<CR>', desc = 'telescope: lsp_document_symbols' },
      { '<leader>fg', '<cmd>Telescope git_commits<CR>',          desc = 'telescope: git_commits' },
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
