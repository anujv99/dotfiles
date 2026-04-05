
--[[

local dap = require('dap')
local dapui = require('dapui')

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode-14',
  name = 'lldb',
}

-- c/cpp
dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stepOnEntry = false,
    args = {},
  },
}

-- setup dapui
dapui.setup({})

]]--

