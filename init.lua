-- ~/.config/nvim/init.lua

require("config.options")
require("config.lsp")
require("config.autocmds")
require("config.keymaps")
require("plugins")
require("nanobuf").setup({
    -- TODO add params
})
require("nanostatus").setup({
    -- TODO add params
})
