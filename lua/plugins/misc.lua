return {
    {
        'Mofiqul/vscode.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.o.background = 'dark'
            vim.cmd([[colorscheme vscode]])
            -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
         end,
    },
}
