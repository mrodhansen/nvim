return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
        local harpoon = require("harpoon")

        -- REQUIRED
        harpoon:setup()
        -- REQUIRED

        -- -- Telescope integration
        -- local conf = require("telescope.config").values
        -- local function toggle_telescope(harpoon_files)
        --     local file_paths = {}
        --     for _, item in ipairs(harpoon_files.items) do
        --         table.insert(file_paths, item.value)
        --     end
        --
        --     require("telescope.pickers").new({}, {
        --         prompt_title = "Harpoon",
        --         finder = require("telescope.finders").new_table({
        --             results = file_paths,
        --         }),
        --         previewer = conf.file_previewer({}),
        --         sorter = conf.generic_sorter({}),
        --     }):find()
        -- end
        --
        -- Add file to harpoon list
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon: Add file" })

        -- Toggle harpoon quick menu via Telescope
        -- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Harpoon: Open menu" })
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        -- Navigate to harpooned files by index (qwerty: 1-4 keys)
        vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end, { desc = "Harpoon: File 1" })
        vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end, { desc = "Harpoon: File 2" })
        vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end, { desc = "Harpoon: File 3" })
        vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end, { desc = "Harpoon: File 4" })
        vim.keymap.set("n", "<C-5>", function() harpoon:list():select(5) end, { desc = "Harpoon: File 5" })

        -- Navigate previous/next in harpoon list
        vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = "Harpoon: Previous" })
        vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = "Harpoon: Next" })
    end,
}
