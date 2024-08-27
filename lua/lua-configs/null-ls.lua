local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local keymap  = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }
local bufopts = { noremap=true, silent=true, buffer=bufnr }

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.diagnostics.tsc,
        null_ls.builtins.completion.spell,
    },
	on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    --vim.lsp.buf.format({bufnr = bufnr})
										
										vim.lsp.buf.format()
								--vim.cmd("EslintFixAll")
                end,
            })
        end
    end,
})

keymap('n', '<Leader>k', ':lua vim.lsp.buf.hover()<CR>', bufopts)
keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', bufopts)

local function quickfix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end

vim.keymap.set('n', '<leader>fi', quickfix, opts)
