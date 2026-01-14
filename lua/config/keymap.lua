vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = '[P]roject [V]'})
vim.keymap.set("n", "<leader>pc", vim.cmd.bd, {desc = '[P]roject [C]lose Buffer'})
vim.keymap.set("n", "j", "k")
vim.keymap.set("n", "k", "j")

vim.keymap.set("n", "<leader>gs", function()
    require('neogit').open()
end, {desc = '[G]it [S]tatus'})

vim.keymap.set("n", "<leader>pfa", 'ggVG=', {desc = '[P]oject [F]ormat [A]ll'})
vim.keymap.set("n", "L", vim.diagnostic.open_float, {desc = 'Open Diagnostic'})

vim.keymap.set('n', '<A-j>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ':m .+1<CR>==', { noremap = true, silent = true })

vim.keymap.set('v', '<A-j>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
