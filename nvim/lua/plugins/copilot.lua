return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'VeryLazy',
    config = function()
      require('copilot').setup({
        filetypes = {
          lua = true,
          go = true,
          ['*'] = false, -- disable for all other filetypes and ignore default `filetypes`
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = '<TAB>',
          },
        },
      })
    end
  },
  {
    {
      'CopilotC-Nvim/CopilotChat.nvim',
      branch = 'canary',
      event = 'VeryLazy',
      dependencies = {
        { 'zbirenbaum/copilot.lua' },
        { 'nvim-lua/plenary.nvim' },
      },
      build = 'make tiktoken',
      keys = {
        { '<leader>ccc', ':CopilotChat ',               desc = 'CopilotChat - Prompt' },
        { '<leader>ccr', '<cmd>CopilotChatReview<cr>',  desc = 'CopilotChat - Review code' },
        { '<leader>cce', '<cmd>CopilotChatExplain<cr>', desc = 'CopilotChat - Explain code' },
        { '<leader>ccd', '<cmd>CopilotChatDocs<cr>',    desc = 'CopilotChat - Add docs' },
        { '<leader>cct', '<cmd>CopilotChatTests<cr>',   desc = 'CopilotChat - Generate tests' },
      },
    },
  }
}
