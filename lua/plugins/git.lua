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
        "f-person/git-blame.nvim",
        event = "VeryLazy",
        opts = {
            enabled = true,
            -- message_template = " <summary> • <date> • <author> • <<sha>>",
            message_template = " <author> • <date> • <<sha>>",
            -- date_format = "%m-%d-%Y %H:%M:%S",
            date_format = "%m-%d-%Y",
            virtual_text_column = 1,
        },
    },
    {
        "sindrets/diffview.nvim",
    },
    {
        "tpope/vim-fugitive",
    },
}
