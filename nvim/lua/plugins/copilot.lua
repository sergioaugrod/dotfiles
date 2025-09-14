return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    opts = {
      filetypes = {
        lua = true,
        go = true,
        terraform = true,
        ['*'] = false, -- disable for all other filetypes and ignore default `filetypes`
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = '<TAB>',
        },
      },
      panel = {
        enabled = false,
      },
      server_opts_overrides = {
        settings = {
          telemetry = {
            telemetryLevel = 'off',
          },
        },
      },
    }
  },
}
