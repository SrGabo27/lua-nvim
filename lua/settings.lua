--vim.cmd('source ~/.config/nvim/lua/vimscript-configs/ale-config.vim')
vim.cmd('source ~/.config/nvim/ftdetect/astro.vim')

require('./lua-configs/nvim-tree-config')
require('./lua-configs/lualine-config')
require('./lua-configs/emmet-config')
require('./lua-configs/cmp')
require('./lua-configs/copilot')
require('./lua-configs/mason')
require('./lua-configs/null-ls')
require('./lua-configs/treesiter')
require('./lua-configs/barbar')
require('./lua-configs/neoformat')
require('./lua-configs/no-neck-pain-config')

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})
