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
        lazy = false,
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter').setup({})
            require('nvim-treesitter').install({
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
            })
            vim.api.nvim_create_autocmd('FileType', {
                callback = function(args)
                    pcall(vim.treesitter.start, args.buf)
                end,
            })
        end,
    },
}
