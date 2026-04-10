--jjでnormal mode
vim.keymap.set("i", "jj", "<esc>")
--terminal modeの時にjjでnormal mode
vim.keymap.set("t", "jj", "<C-\\><C-n>")
--US配列用に;でもコマンドが打てるように入れ替え
vim.keymap.set("n", ";", ":")

vim.api.nvim_set_keymap('n', '<leader>gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
