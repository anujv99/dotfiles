
local lsp_zero = require('lsp-zero')
local mason = require('mason')
local mason_lsp_config = require('mason-lspconfig')

lsp_zero.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

mason.setup({ })
mason_lsp_config.setup({
  ensure_installed = { 'ts_ls', 'clangd' },
  handlers = {
	lsp_zero.default_setup,
  }
})

vim.lsp.config('ts_ls', {
  init_options = {
    preferences = {
      importModuleSpecifierPreference = 'relative',
      importModuleSpecifierEnding = 'minimal',
    },
  },
})

vim.lsp.config('clangd', {
  cmd = { 'clangd', '--background-index', '--clang-tidy', '--completion-style=bundled' },
})

vim.lsp.enable({ 'ts_ls', 'clangd' })

