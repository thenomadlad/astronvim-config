vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"
vim.bo.softtabstop = 2

vim.keymap.set("i", "jk", "<ESC>", { silent = true })

-- lsp action
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc="LSP code action" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc="LSP rename symbol" })
