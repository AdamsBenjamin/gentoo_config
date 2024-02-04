vim.g.mapleader = " "
vim.keymap.set("n", "<leader>\\", "<Esc>:NnnExplorer<Enter>")
vim.keymap.set("n", "gs", ":vs<Enter>gf")
vim.keymap.set("i", "<C-l>", "<C-g>u<Esc>[s1z=`]a<C-g>u")
