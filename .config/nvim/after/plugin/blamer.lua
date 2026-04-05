
local opts = require('config.remap').opts

vim.g.blamer_enabled = 0
vim.g.blamer_delay = 300
vim.g.blamer_show_in_visual_modes = 1
vim.g.blamer_show_in_insert_modes = 0
vim.g.blamer_relative_time = 1

vim.keymap.set('n', '<leader>gb', ':BlamerToggle<cr>', opts('blamer: toggle'))

