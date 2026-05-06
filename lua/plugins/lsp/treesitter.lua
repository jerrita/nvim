return {
    { -- Highlight
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "cpp", "python", "rust", "markdown" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
}
