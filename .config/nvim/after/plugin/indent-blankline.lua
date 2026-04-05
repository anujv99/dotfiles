
local ibl = require('ibl')
local hooks = require('ibl.hooks')

local hl_group_name = 'ibl_highlight_group'

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, hl_group_name, { fg = '#61AFEF' })
end)

ibl.setup({
  indent = {
    char = '│',
  },
  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
    highlight = hl_group_name,
  },
})

