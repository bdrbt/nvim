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
