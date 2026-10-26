-- ~/.config/nvim/lua/lsp/gopls.lua

return {
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                unusedwrite = true,
                useany = true,
                nilness = true,
            },
            staticcheck = true,
            gofumpt = true,
            hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
            },
        },
    },
}
