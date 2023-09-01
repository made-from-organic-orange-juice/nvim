-- set global variables
vim.g.mapleader = " "

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- while in normal mode, and I press <leader>pv it will execute vim.cmd.Ex!
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move the visual selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move the line down" });
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move the line up" });

-- cursur stays in the middle while usiung C-d and C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "when moving down center the cursor" });
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "when moving up center the cursor" });

-- keep search in the middle
vim.keymap.set("n", "n", "nzzzv", { desc = "next search - keep search in the middle" });
vim.keymap.set("n", "N", "Nzzzv", { desc = "previous search - keep search in the middle" });

-- navigate between quickfix list
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz", { desc = "next quickfix" });
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz", { desc = "previous quickfix" });

