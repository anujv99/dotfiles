
local formatter = require('formatter')
local util = require('formatter.util')

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local prettierd = {
  function()
    return {
      exe = 'prettierd',
      args = { vim.api.nvim_buf_get_name(0) },
      stdin = true,
    }
  end
}

local clang_format = {
  function()
    return {
      exe = "clang-format",
      args = {
        "-assume-filename",
        util.escape_path(util.get_current_buffer_file_name()),
      },
      stdin = true,
      try_node_modules = true,
    }
  end
}

formatter.setup({
  logging = true,
  filetype = {
    javascript = prettierd,
    javascriptreact = prettierd,
    typescript = prettierd,
    typescriptreact = prettierd,
    -- c = clang_format,
    -- cpp = clang_format,
  },
})

-- format on save
--[[
augroup('__formatter__', { clear = true })
autocmd('BufWritePost', {
  group = '__formatter__',
  command = ':FormatWrite',
})
]]--
