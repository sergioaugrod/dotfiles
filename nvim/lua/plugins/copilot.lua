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
  }
}
