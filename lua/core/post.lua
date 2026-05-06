-- Enable inlay hints
vim.lsp.inlay_hint.enable(true)

-- Auto format on save (except json)
vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = buffer,
    callback = function()
        if vim.bo.filetype ~= "json" then
            vim.lsp.buf.format { async = false }
        end
    end
})
