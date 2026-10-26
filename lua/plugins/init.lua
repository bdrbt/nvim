-- ~/.config/nvim/lua/plugins/init.lua

local M = {}

-- Cloning helper
local function ensure_plugin(url)
  local name = url:match("([^/]+)$"):gsub("%.git$", "")
  local target_dir = vim.fn.stdpath("config") .. "/pack/bundle/start/" .. name

  if vim.fn.isdirectory(target_dir) == 0 then
    print("Cloning" .. name .. "...")
    vim.fn.system({ "git", "clone", "--depth=1", url, target_dir })
  end
end

-- Plugins list
ensure_plugin("https://github.com/folke/tokyonight.nvim")
ensure_plugin("https://github.com/neovim/nvim-lspconfig")

-- Plugins setup
vim.cmd.colorscheme("tokyonight-night")

return M
