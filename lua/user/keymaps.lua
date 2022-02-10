local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap leader key
keymap("", ",", "<Nop>", opts)
vim.g.mapleader = ","

-- Navigate buffers
keymap("n", "<leader>b", ":b#<cr>", opts)

-- Nvim-tree
keymap("n", "<leader>n", ":NvimTreeToggle<cr>", opts)

-- Build
keymap("n", "<leader>m", ":make -C build -j4<cr>", opts)

-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
