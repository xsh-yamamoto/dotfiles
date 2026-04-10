return{
--  {
--    "diegoulloao/neofusion.nvim",
--    lazy = false, 
--    priority = 1000, 
--    config = function()
--      vim.o.background = "dark"
--      vim.cmd([[colorscheme neofusion]])
--    end,
--  },


-- {
--      'sainnhe/everforest',
--      lazy = false,
--      priority = 1000,
--      config = function()
--        -- Optionally configure and load the colorscheme
--        -- directly inside the plugin declaration.
--        vim.g.everforest_enable_italic = true
--        vim.cmd.colorscheme('everforest')
--      end
--    },


--  {
--    "craftzdog/solarized-osaka.nvim",
--    lazy = false, 
--    priority = 1000, 
--    config = function()
--      vim.cmd.colorscheme('solarized-osaka')
--    end,
--  },

--  {
--    "nyoom-engineering/oxocarbon.nvim",
--    lazy = false, 
--    priority = 1000, 
--    config = function()
--      vim.o.background = "light"
--      vim.cmd.colorscheme('oxocarbon')
--    end,
--  },

--  {
--    "morhetz/gruvbox",
--    lazy = false, 
--    priority = 1000, 
--    config = function()
--      vim.cmd.colorscheme('gruvbox')
--    end,
--  },
----
-- {
--     'rebelot/kanagawa.nvim',
--     lazy=false,
--     priority = 1000,
--     config = function()
--         vim.cmd.colorscheme('kanagawa-wave')
--     end,
-- },
{
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
      -- ...
    })

--    vim.cmd('colorscheme github_light')
    vim.cmd('colorscheme github_dark')
  end,
}
}


