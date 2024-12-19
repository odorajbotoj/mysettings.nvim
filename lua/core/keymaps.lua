vim.g.mapleader = " "

local keymap = vim.keymap

-- line move
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- window
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>i", "gg=G")

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- buffer
keymap.set("n", "<leader>L", ":bnext<CR>")
keymap.set("n", "<leader>H", ":bprevious<CR>")

-- floaterm
keymap.set("n", "<leader>t", ":FloatermToggle<CR>")

-- lsp
keymap.set("n", "<leader>lr", ":lua vim.lsp.buf.rename()<CR>")
keymap.set("n", "<leader>ld", ":lua vim.lsp.buf.definition()<CR>")
keymap.set("n", "<leader>lh", ":lua vim.lsp.buf.hover()<CR>")
keymap.set("n", "<leader>li", ":lua vim.lsp.buf.implementation()<CR>")
keymap.set("n", "<leader>la", ":lua vim.lsp.buf.code_action()<CR>")
keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.format({async=true})<CR>")
keymap.set("n", "<leader>lre", ":lua vim.lsp.buf.references()<CR>")
keymap.set("n", "<leader>lde", ":lua vim.lsp.buf.declaration()<CR>")
