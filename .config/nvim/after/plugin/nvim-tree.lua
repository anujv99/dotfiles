
local nvim_tree = require('nvim-tree')
local opts = require('config.remap').opts

-- custom setup
local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  -- vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>', opts('Open'))
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

-- custom mappings
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>', opts('nvim-tree: Open nvim-tree'))
vim.keymap.set('n', '<leader>fs', ':NvimTreeFindFile<cr>', opts('nvim-tree: Find file'))

nvim_tree.setup({
  on_attach = on_attach,
  view = {
    width = 64,
  },
})

