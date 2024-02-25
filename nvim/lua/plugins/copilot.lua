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
          terraform = true,
          ['*'] = false, -- disable for all other filetypes and ignore default `filetypes`
        },
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end
  },
  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end
  },
  {
    {
      'CopilotC-Nvim/CopilotChat.nvim',
      opts = {
        show_help = 'yes',         -- Show help text for CopilotChatInPlace, default: yes
        debug = false,             -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
        disable_extra_info = 'no', -- Disable extra information (e.g: system prompt) in the response.
      },
      build = function()
        vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
      end,
      event = 'VeryLazy',
      keys = {
        { '<leader>ccc', ':CopilotChat ',               desc = 'CopilotChat - Prompt' },
        { '<leader>cce', '<cmd>CopilotChatExplain<cr>', desc = 'CopilotChat - Explain code' },
        { '<leader>cct', '<cmd>CopilotChatTests<cr>',   desc = 'CopilotChat - Generate tests' },
        { '<leader>ccr', '<cmd>CopilotChatReset<cr>',   desc = 'CopilotChat - Reset chat history and clear buffer' },
      },
    },
  }
}
