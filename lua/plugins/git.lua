return {
    {
        "kdheepak/lazygit.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            vim.g.lazygit_use_custom_config_file_path = 1
            vim.g.lazygit_config_file_path = vim.fn.expand("~/.config/lazygit/config.yml")
        end,
    },
    {
        "sindrets/diffview.nvim",
    },
    {
        "tpope/vim-fugitive",
    },
}
