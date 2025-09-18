local servers = {
    lua_ls = {
        Lua = {
            hint = { enable = true }
        }
    },
}

if vim.loop.os_uname().sysname == 'Linux' then
end

local ensure_installed_names = vim.tbl_keys(servers or {})
return {
    {
        'neovim/nvim-lspconfig',
        keys = {
            { '<leader>lf', '<cmd>lua vim.lsp.buf.format { async = true }<CR>',                            desc = 'Format Code' },
            { '<leader>ld', '<cmd>Lspsaga peek_definition<CR>',                                            desc = 'Show Definition' },
            { '<leader>lq', '<cmd>Lspsaga show_cursor_diagnostics<CR>',                                    desc = 'Show Diagnostics' }, 
            { '<leader>lh', '<cmd>Lspsaga hover_doc<CR>',                                                  desc = 'hover' },
            { '<leader>la', '<cmd>Lspsaga code_action<CR>',                                                desc = 'Code Action' },
            { '<leader>li', '<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<cr>', desc = 'Toggle inlay hint' }
        },
    },
    {
        'williamboman/mason.nvim',
        opts = {
            ensure_installed == ensure_installed_names
        }
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup_handlers {
                function(server_name)
                    local capabilities = require('cmp_nvim_lsp').default_capabilities()
                    local server = servers[server_name] or {}
                    server.capabilities = capabilities
                    require('lspconfig')[server_name].setup(server)
                end,
            }
        end,
    },
    {
        'nvimdev/lspsaga.nvim',
        dependencies = {
            'nvim-treesitter/nvim-treesitter', -- optional
            'nvim-tree/nvim-web-devicons',     -- optional
        },
        config = true
    }
}
