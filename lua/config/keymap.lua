-- Project
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = '[P]roject [V]'})
vim.keymap.set("n", "<leader>pfa", 'ggVG=', {desc = '[P]oject [F]ormat [A]ll'})
vim.keymap.set("n", "<leader>bc", function()
  vim.api.nvim_command("bd!")
end, {desc = '[B]uffer [C]lose'})

-- Diagnostics
vim.keymap.set("n", "gl", vim.diagnostic.open_float, {desc = 'Open Diagnostic'})
vim.keymap.set("n", "ga", vim.lsp.buf.code_action, {desc = '[C]ode [A]ction'})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {desc = '[G]o to [D]efinition'})

-- Neocodeium
vim.keymap.set("i", "<Tab>", function()
    require("neocodeium").accept()
end)
vim.keymap.set("i", "<C>", function()
    require("neocodeium").clear()
end)

-- Swap j and k
vim.keymap.set("n", "j", "k")
vim.keymap.set("n", "k", "j")

-- Move lines
vim.keymap.set('n', '<A-j>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ':m .+1<CR>==', { noremap = true, silent = true })

vim.keymap.set('v', '<A-j>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Git
vim.keymap.set("n", "<leader>gs", function()
    require('neogit').open()
end, {desc = '[G]it [S]tatus'})

