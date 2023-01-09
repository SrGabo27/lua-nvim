vim.cmd('source ~/.config/nvim/lua/vimscript-configs/ale-config.vim')
vim.cmd('source ~/.config/nvim/lua/vimscript-configs/prettier-config.vim')

require('./lua-configs/nvim-tree-config')
require('./lua-configs/lualine-config')
require('./lua-configs/emmet-config')
require('./lua-configs/cmp')
require('./lua-configs/copilot')
require('./lsp')
