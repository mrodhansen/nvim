return {
    {
        'nvim-treesitter/nvim-treesitter-context',
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        event = 'BufReadPre',
        opts = {
            max_lines = 3,
        },
    },
    {
        'nvim-treesitter/nvim-treesitter',
        branch = 'master',
        lazy = false,
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {
                    'javascript',
                    'typescript',
                    'tsx',
                    'lua',
                    'python',
                    'c',
                    'html',
                    'css',
                    'json',
                    'yaml',
                    'bash',
                    'markdown',
                    'markdown_inline',
                    'vue',
                    'svelte',
                    'rust',
                    'dockerfile',
                    'prisma',
                },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
}
