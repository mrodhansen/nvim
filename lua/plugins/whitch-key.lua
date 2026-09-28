return {
    "folke/which-key.nvim",
    event = "VimEnter",
    config = function()
        local wk = require("which-key")

        wk.setup({
            delay = 0,
            -- Built-in Vim help (not a full dump of every default map).
            plugins = {
                marks = true,
                registers = true,
                spelling = {
                    enabled = true,
                    suggestions = 20,
                },
                presets = {
                    operators = true,
                    motions = true,
                    text_objects = true,
                    windows = true,
                    nav = true,
                    z = true,
                    g = true,
                },
            },
            icons = {
                mappings = vim.g.have_nerd_font or false,
                keys = vim.g.have_nerd_font and {} or {
                    Up = '<Up> ',
                    Down = '<Down> ',
                    Left = '<Left> ',
                    Right = '<Right> ',
                    C = '<C-…> ',
                    M = '<M-…> ',
                    D = '<D-…> ',
                    S = '<S-…> ',
                    CR = '<CR> ',
                    Esc = '<Esc> ',
                    ScrollWheelDown = '<ScrollWheelDown> ',
                    ScrollWheelUp = '<ScrollWheelUp> ',
                    NL = '<NL> ',
                    BS = '<BS> ',
                    Space = '<Space> ',
                    Tab = '<Tab> ',
                    F1 = '<F1>',
                    F2 = '<F2>',
                    F3 = '<F3>',
                    F4 = '<F4>',
                    F5 = '<F5>',
                    F6 = '<F6>',
                    F7 = '<F7>',
                    F8 = '<F8>',
                    F9 = '<F9>',
                    F10 = '<F10>',
                    F11 = '<F11>',
                    F12 = '<F12>',
                },
            },
            spec = {
                { '<leader>?', function() require('which-key').show({ global = true }) end, desc = 'All Keymaps' },
                { '<leader>s', group = 'Search' },
                { '<leader>p', group = 'Project' },
                { '<leader>g', group = 'Git' },
                { '<leader>b', group = 'Buffer Management' },
                { '<leader>f', group = 'Format' },
                { '<leader>l', group = 'LSP' },
                { '<leader>d', group = 'Database' },
                { 'gc', group = 'Comment', mode = { 'n', 'v' } },
            },
        })
    end
}
