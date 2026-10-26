-- ~/.config/nvim/lua/config/options.lua

local opt = vim.opt

-- Encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.clipboard = "unnamedplus" -- system clipboard

-- String numbering
opt.number = true
opt.relativenumber = true

-- Tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Appearance
opt.termguicolors = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.cursorline = true

-- Autocompletion
opt.pumheight = 10
opt.pumwidth = 20
opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess:append("c")

-- Swap & Backup
opt.backup = false
opt.swapfile = false
opt.undofile = true 
