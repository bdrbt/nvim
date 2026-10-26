-- ~/.config/nvim/lua/lsp/lua_ls.lua

return {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Important for vim plugins
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            -- Disable agressive type hints
            hint = {
                enable = false,
            },
            -- Disable strange autocorrections
            type = {
                castNumberToInteger = true,
            },
            completion = {
                callSnipet = "Disable",
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
