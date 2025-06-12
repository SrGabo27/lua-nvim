vim.opt.number = true
vim.opt.numberwidth = 1
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.showcmd = true
vim.opt.ruler = true
vim.opt.encoding = 'utf-8'
vim.opt.showmatch = true
vim.opt.relativenumber = true
vim.opt.laststatus = 2
vim.opt.termguicolors = true
vim.opt.cursorline = true
--vim.opt.autoindent = true
--vim.opt.smartindent = true
vim.o.completeopt = 'menuone,noselect'
--vim.opt.shiftwidth = 2
--vim.opt.softtabstop = 2
vim.opt.sw = 2
vim.opt.swapfile = false

require('plugins')
require('maps')
require('settings')

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "NvimTree_*",
  callback = function()
    vim.schedule(function()
      if package.loaded["null-ls"] then
        require("null-ls").disable({})
      end
    end)
  end,
  desc = "Disable null-ls in NvimTree",
})

vim.cmd('let g:gruvbox_material_background = "hard"')
vim.cmd('let g:gruvbox_material_foreground = "material"')
--vim.cmd('let g:nord_contrast = v:true')

--vim.cmd('set background=medium')
vim.cmd('colorscheme gruvbox-material')
