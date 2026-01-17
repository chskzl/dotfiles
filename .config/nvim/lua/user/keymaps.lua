local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Multiple Cursors
keymap({"i","n"}, "<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", opts)
keymap({"i","n"}, "<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", opts)
keymap("i", "<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", opts)
keymap("i", "<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", opts)
keymap({"i","n"}, "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", opts)

-- Navigate between viewports
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- File navigation/search
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<cr>", opts)

-- Quick write/quit
keymap("n", "<leader>q", ":q!<cr>", opts)
keymap("n", "<leader>w", ":w<cr>", opts)

-- Navigate between buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Change indentation level
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- replace selected text with contents of clipboard
keymap("v", "p", '"_dP', opts)

-- Move selected line up or down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '>-2<CR>gv-gv", opts)

