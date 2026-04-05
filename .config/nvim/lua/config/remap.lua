
local remap = {};

remap.opts = function(desc)
  return { desc = desc, buffer = bufnr, noremap = true, silent = true, nowait = true, }
end

-- leader key
vim.g.mapleader = ' '

-- open net rw (using nvim-tree)
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- clear search result
vim.keymap.set('n', '<leader>k', vim.cmd.noh, remap.opts('clear search'))

-- split window
vim.keymap.set('n', '<leader>wv', ':vsplit<cr>', remap.opts('window: split vertically'))
vim.keymap.set('n', '<leader>wh', ':split<cr>', remap.opts('window: split horizontally'))

-- naviage between splits
vim.keymap.set('n', '<C-h>', '<C-w>h', remap.opts('focus: left split'))
vim.keymap.set('n', '<C-l>', '<C-w>l', remap.opts('focus: right split'))
vim.keymap.set('n', '<C-j>', '<C-w>j', remap.opts('focus: bottom split'))
vim.keymap.set('n', '<C-k>', '<C-w>k', remap.opts('focus: top split'))

-- unmap arrow keys
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')
vim.keymap.set('i', '<Up>', '<Nop>')
vim.keymap.set('i', '<Down>', '<Nop>')
vim.keymap.set('i', '<Left>', '<Nop>')
vim.keymap.set('i', '<Right>', '<Nop>')

-- paste without copy
vim.keymap.set('x', '<leader>p', '"_dP', remap.opts('paste without copy'))

-- yank to system clipboard
vim.keymap.set('n', '<leader>y', '"+y', remap.opts('yank to system clipboard'))
vim.keymap.set('v', '<leader>y', '"+y', remap.opts('yank to system clipboard'))

return remap

