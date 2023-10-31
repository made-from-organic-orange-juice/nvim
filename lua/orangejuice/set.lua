-- fat cursor
vim.opt.guicursor = ""

-- line numbers and relative ln
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = false

-- disable file type indenting
vim.cmd [[
filetype indent off
]]



vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("UserProfile") ..  "\\.vim\\undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
vim.opt.list = true

