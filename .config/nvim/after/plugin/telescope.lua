
local builtin = require('telescope.builtin')
local opts = require('config.remap').opts

vim.keymap.set('n', '<leader>ff', builtin.find_files, opts('telescope: find files'))
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts('telescope: search grep'))
vim.keymap.set('n', '<C-p>', builtin.git_files, opts('telescope: find git files'))

