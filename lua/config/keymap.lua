-- Project
vim.keymap.set("n", "<leader>pv", "<cmd>NvimTreeFindFileToggle<cr>", {desc = '[P]roject [V]iew'})
vim.keymap.set("n", "<leader>pfa", 'ggVG=', {desc = '[P]oject [F]ormat [A]ll'})
vim.keymap.set("n", "<leader>bc", function()
  vim.api.nvim_command("bd!")
end, {desc = '[B]uffer [C]lose'})

-- Diagnostics
vim.keymap.set("n", "gl", vim.diagnostic.open_float, {desc = 'Open Diagnostic'})
vim.keymap.set("n", "ga", vim.lsp.buf.code_action, {desc = '[C]ode [A]ction'})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {desc = '[G]o to [D]efinition'})

-- Neocodeium
vim.keymap.set("i", "<S-Tab>", function()
    require("neocodeium").accept()
end)
vim.keymap.set("i", "<C>", function()
    require("neocodeium").clear()
end)

-- Swap j and k
-- vim.keymap.set("n", "j", "k")
-- vim.keymap.set("n", "k", "j")
--
-- Move lines
vim.keymap.set('n', '<A-j>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ':m .+1<CR>==', { noremap = true, silent = true })

vim.keymap.set('v', '<A-j>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Database
vim.keymap.set("n", "<leader>db", "<cmd>DBUIToggle<cr>", {desc = '[D]ata[B]ase UI'})

-- Git
vim.keymap.set("n", "<leader>gs", ":LazyGit<CR>", {desc = '[G]it [S]tatus'})
vim.keymap.set("n", "<leader>gr", ":DiffviewOpen main<CR>", {desc = '[G]it diff vs main ([R]eview)'})
vim.keymap.set("n", "<leader>gc", ":DiffviewClose<CR>", {desc = '[G]it close diffview'})
vim.keymap.set("n", "<leader>gpm", ":Git pull origin main<CR>", {desc = '[G]it [P]ull origin [M]ain'})

