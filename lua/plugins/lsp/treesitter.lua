return {
    { -- Highlight
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
        main = "nvim-treesitter",
        init = function()
            local ensure_installed = { "c", "lua", "vim", "vimdoc", "cpp", "python", "rust", "markdown" }
            local already_installed = require("nvim-treesitter.config").get_installed()
            local parsers_to_install = vim.iter(ensure_installed)
                :filter(function(parser)
                    return not vim.tbl_contains(already_installed, parser)
                end)
                :totable()
            require("nvim-treesitter").install(parsers_to_install)
        end,
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
        },
    },
}
