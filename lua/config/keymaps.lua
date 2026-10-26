-- ~/.config/nvim/lua/config/keymaps.lua

local map = vim.keymap.set
local opts = { silent = true }
local map = vim.keymap.set

-- Leaders
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Common keys
-- Remove search highliight
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- Toggle line numbering
vim.keymap.set({ "n", "i", "v" }, "<C-n>", function()
  if vim.opt_local.relativenumber:get() then
    vim.opt_local.relativenumber = false
    print("Relative numbers: OFF")
  else
    vim.opt_local.relativenumber = true
    print("Relative numbers: ON")
  end
end, { desc = "Toggle relative line numbers" })

-- LSP 
-- Go to Definition
map("n", "gd", vim.lsp.buf.definition, { desc = "LSP: Go to definition" })

-- Go to Implementation
map("n", "gi", vim.lsp.buf.implementation, { desc = "LSP: Go to implementation" })

-- Show signature
map("n", "K", vim.lsp.buf.hover, { desc = "LSP: Show documentation" })

-- Rename symbol
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP: Rename symbol" })

-- Code Action
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code action" })

-- Diagnostic navigation
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show line diagnostics" })


