-- 行番号を表示
vim.opt.number = true
-- 相対行番号を表示
--vim.opt.relativenumber = true
-- クリップボードの共有
vim.opt.clipboard = "unnamedplus"
-- カーソル行をハイライトする
vim.opt.cursorline = true
-- タブとインデントの設定
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.list = true
vim.opt.listchars = {
  tab = "> ", -- タブ文字
  space = "･", -- 空白文字
}

vim.api.nvim_create_autocmd("BufWinEnter", {
  callback = function()
    -- 普通のファイル（buftypeが空）の場合のみ、現在のウィンドウの行番号をオンにする
    if vim.bo.buftype == "" then
      vim.opt_local.number = true
    end
  end,
})
