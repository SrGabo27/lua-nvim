local keymap  = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }
local bufopts = { noremap=true, silent=true, buffer=bufnr }

keymap('n', '<Leader>q', ':BufferClose<CR>', opts)
keymap('n', 'J', ':BufferPrevious<CR>', opts)
keymap('n', 'K', ':BufferNext<CR>', opts)
keymap('n', 'H', ':BufferMovePrevious<CR>', opts)
keymap('n', 'L>', ':BufferMoveNext<CR>', opts)
