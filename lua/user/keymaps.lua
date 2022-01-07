local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap leader key
keymap("", ",", "<Nop>", opts)
vim.g.mapleader = ","

-- Navigate buffers
keymap("n", "<leader>b", ":b#<cr>", opts)

-- Nvim-tree
keymap("n", "<leader>n", ":NvimTreeToggle<cr>", opts)

