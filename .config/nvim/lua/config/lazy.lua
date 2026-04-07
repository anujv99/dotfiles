
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- setup
local lazy = require('lazy')

local plugins = {
  -- fuzzy finder
  'nvim-lua/plenary.nvim',
  { 'nvim-telescope/telescope.nvim' },
  
  -- themes
  { 'rose-pine/nvim', name = 'rose-pine' },
  'rebelot/kanagawa.nvim',
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  'nyoom-engineering/oxocarbon.nvim',
  { 'monsonjeremy/onedark.nvim', branch = 'treesitter' },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

  -- treesitter
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },

  -- undotree
  'mbbill/undotree',

  -- lsp
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- lsp support
  'neovim/nvim-lspconfig',

  -- autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',

  { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },

  -- which key
  { 'folke/which-key.nvim',
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  },

  -- feline statusline
  'famiu/feline.nvim',

  -- indent blank line
  'lukas-reineke/indent-blankline.nvim',

  -- nvim tree
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',

  -- formatter
  'mhartington/formatter.nvim',

  -- cmake tools
  'Civitasv/cmake-tools.nvim',

  -- git tools
  'airblade/vim-gitgutter',
  'APZelos/blamer.nvim',

  --[[
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {}
  },
  ]]--

  'ThePrimeagen/vim-be-good',
  
  -- dap
  'mfussenegger/nvim-dap',
  'rcarriga/nvim-dap-ui',
}

lazy.setup(plugins)

