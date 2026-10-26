-- ~/.config/nvim/lua/config/autocmds.lua

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Line numbering toggle group
local number_toggle_group = augroup("NumberToggle", { clear = true })

autocmd("InsertEnter", {
    group = number_toggle_group,
    callback = function()
        -- Is the numbering turned ON
        if vim.opt_local.number:get() then
            vim.opt_local.relativenumber = true
        end
    end,
})

autocmd("InsertLeave", {
    group = number_toggle_group,
    callback = function()
        if vim.opt_local.number:get() then
            vim.opt_local.relativenumber = false
        end
    end,
})

-- Format, organizing imports on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        pcall(function()
            -- Get activae client and buffer
            local clients = vim.lsp.get_clients({ bufnr = 0 })
            if #clients == 0 then return end

            -- Get encoding from first client
            local encoding = clients[0 and 1 or 1].offset_encoding or "utf-16"

            local params = vim.lsp.util.make_range_params(0, encoding)
            params.context = {
                only = { "source.organizeImports" },
                diagnostics = {}, -- LSP require diagnostic table
            }

            -- Ask synchronous code action
            local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 1000)
            if result then
                for _, res in pairs(result) do
                    if res.result then
                        for _, err in pairs(res.result) do
                            if err.edit then
                                vim.lsp.util.apply_workspace_edit(err.edit, "utf-8")
                            end
                        end
                    end
                end
            end
        end)

        -- Aaaand format
        vim.lsp.buf.format({ async = false, timeout_ms = 1000 })
    end,
})

-- Nanogit
vim.api.nvim_create_autocmd({ "VimEnter", "DirChanged", "BufEnter" }, {
    callback = function()
        require("nanogit").init()
    end,
})
