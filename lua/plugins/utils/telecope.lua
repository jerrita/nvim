return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        lazy = false,
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { '<leader>ff', '<cmd>Telescope find_files<cr>',     desc = 'Telescope find files' },
            { '<leader>fg', '<cmd>Telescope live_grep<cr>',      desc = 'Telescope live grep' },
            { '<leader>fb', '<cmd>Telescope buffers<cr>',        desc = 'Telescope buffers' },
            { '<leader>fh', '<cmd>Telescope help_tags<cr>',      desc = 'Telescope help tags' },
            -- LSP scope
            { '<leader>lr', '<cmd>Telescope lsp_references<cr>', desc = 'Telescope lsp refs' },
        }
    }
}
