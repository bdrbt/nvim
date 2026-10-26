-- ~/.config/nvim/lua/config/lsp.lua

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    local client_id = args.data.client_id

    if vim.lsp.completion then
      vim.lsp.completion.enable(true, client_id, bufnr, {
        autotrigger = true,
      })
    end
  end,
})

-- Lsp servers list
local servers = { 
    "gopls", 
    "clangd", 
    "lua_ls" 
}

for _, server in ipairs(servers) do
  vim.lsp.enable(server)
end
