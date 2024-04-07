return {
  {
    'mfussenegger/nvim-dap',
    keys = {
      { '<F5>',      function() require('dap').continue() end,          desc = 'Debugger continue' },
      { '<F8>',      function() require('dap').step_over() end,         desc = 'Debugger step over' },
      { '<F9>',      function() require('dap').step_into() end,         desc = 'Debugger step into' },
      { '<F10>',     function() require('dap').step_out() end,          desc = 'Debugger step out' },
      { '<leader>b', function() require('dap').toggle_breakpoint() end, desc = 'Toggle debugger breakpoint' },
    },
    config = function()
      local dap, dapui = require('dap'), require('dapui')

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end

      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end

      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end

      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      dap.adapters.delve = {
        type = 'server',
        port = '${port}',
        executable = {
          command = 'dlv',
          args = { 'dap', '-l', '127.0.0.1:${port}' },
        }
      }

      dap.adapters.delve_remote = {
        type = 'server',
        host = '127.0.0.1',
        port = 50145
      }

      dap.configurations.go = {
        {
          type = 'delve_remote',
          name = 'Attach (remote)',
          request = 'attach',
          mode = 'remote'
        },
        {
          type = 'delve',
          name = 'Debug',
          request = 'launch',
          program = '${file}'
        },
        {
          type = 'delve',
          name = 'Debug test',
          request = 'launch',
          mode = 'test',
          program = '${file}'
        },
        {
          type = 'delve',
          name = 'Debug test (go.mod)',
          request = 'launch',
          mode = 'test',
          program = './${relativeFileDirname}'
        },
      }
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
    config = function()
      require('dapui').setup()
    end,
  }
}
