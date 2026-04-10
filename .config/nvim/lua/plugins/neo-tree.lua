return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  -- neo-treeが動くために必要な別のプラグインたち（自動で一緒にインストールされます）
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- ファイルのアイコンを綺麗に表示する
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- キーバインドの設定
    -- ノーマルモードで「Ctrl + n」を押すとツリーが開閉するようにします
    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { silent = true, desc = "Toggle Neo-tree" })
    
    -- 必要であれば、開いているファイルのある場所をツリー上でフォーカスするキーバインドも便利です
    -- vim.keymap.set('n', '<leader>e', ':Neotree reveal<CR>', { silent = true, desc = "Reveal file in Neo-tree" })
  end
}
