
local feline = require('feline')
local ctp_feline = require('catppuccin.special.feline')

ctp_feline.setup({ })

feline.setup({
  components = ctp_feline.get_statusline(),
})

