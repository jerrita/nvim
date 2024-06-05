return {
    { -- Tree
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        keys = { { '<leader>e', "<cmd>Neotree toggle dir=./ reveal<CR>", desc = 'Toggle Neotree' } },
        opts = {
            close_if_last_window = true,
            window = {
                position = 'left',
                width = 20,
                auto_expand_width = true
            },
        },
    },
}
