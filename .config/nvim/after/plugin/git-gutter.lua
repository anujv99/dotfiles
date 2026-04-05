
local opts = require('config.remap').opts

-- gitgutter remaps
vim.keymap.set('n', '<leader>gg', ':GitGutterAll<cr>', opts('git-gutter: Refresh all files'))

