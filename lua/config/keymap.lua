-- Project
vim.keymap.set("n", "<leader>pv", "<cmd>NvimTreeFindFileToggle<cr>", {desc = 'File tree'})
vim.keymap.set("v", "<leader>y", "\"+y", {desc = 'Yank to clipboard'})
-- Buffer
vim.keymap.set("n", "<leader>bc", function()
  vim.api.nvim_command("bd!")
end, {desc = 'Close buffer'})
-- Format
vim.keymap.set("n", "<leader>fa", 'ggVG=', {desc = 'Format all'})

-- Diagnostics
vim.keymap.set("n", "gl", vim.diagnostic.open_float, {desc = 'Open diagnostic'})
vim.keymap.set("n", "ga", vim.lsp.buf.code_action, {desc = 'Code action'})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {desc = 'Go to definition'})
vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, {desc = 'Go to type definition'})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {desc = 'Go to declaration'})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {desc = 'Go to implementation'})
vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<cr>", { desc = "Restart LSP" })

-- Move lines
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true, desc = 'Move line up' })
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true, desc = 'Move line down' })

vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selection up' })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selection down' })

-- Database
vim.keymap.set("n", "<leader>db", "<cmd>DBUIToggle<cr>", {desc = 'Toggle UI'})

-- Git
vim.keymap.set("n", "<leader>gs", ":LazyGit<CR>", {desc = 'Status'})
vim.keymap.set("n", "<leader>gr", ":DiffviewOpen main<CR>", {desc = 'Diff vs main'})
vim.keymap.set("n", "<leader>gc", ":DiffviewClose<CR>", {desc = 'Close diffview'})
-- vim.keymap.set("n", "<leader>gpm", ":Git pull origin main<CR>", {desc = 'Pull origin main'})

