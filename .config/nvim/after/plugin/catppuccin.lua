
local catppuccin = require('catppuccin')

catppuccin.setup({
  integrations = {
    treesitter = true,
    which_key = true,
    nvimtree = true,
    telescope = {
      enabled = true,
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { 'italic' },
        hints = { 'italic' },
        warnings = { 'italic' },
        information = { 'italic' },
      },
      underlines = {
        errors = { 'underline' },
        hints = { 'underline' },
        warnings = { 'underline' },
        information = { 'underline' },
      },
      inlay_hints = {
        background = true,
      },
    },
  },
  indent_blankline = {
    enabled = true,
    scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
    colored_indent_levels = false,
  },
})

vim.cmd.colorscheme('catppuccin-mocha')

