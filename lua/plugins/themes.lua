return {
  { 'sainnhe/sonokai', 
    lazy = false, 
    priority = 1000,
    config = function()
      -- shusia, espresso, maia, andromeda, atlantis, default
      vim.g.sonokai_style = 'andromeda'
      vim.cmd.colorscheme('sonokai')
    end,
  },
  -- { 'f-person/auto-dark-mode.nvim',
  --   lazy = false,
  --   priority = 2000,
  --   opts = {
  --     update_interval = 1000,
  --     set_dark_mode = function()
  --       vim.cmd.colorscheme('sonokai')
  --     end,
  --     set_light_mode = function()
  --       require('onedark').setup { style = 'light' }
  --       require('onedark').load()
  --     end,
  --   },
  -- },
  -- { 'Iron-E/nvim-highlite',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --   end,
  -- },
  -- { 'navarasu/onedark.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --   end,
  -- },
  --
  -- { "yorik1984/newpaper.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --   end,
  -- },
  -- { 'folke/tokyonight.nvim', lazy = false, priority = 1000 },
  -- { 'gbprod/nord.nvim', lazy = false, priority = 1000 },
  -- { 'AlexvZyl/nordic.nvim', lazy = false, priority = 1000 },
  -- { 'ellisonleao/gruvbox.nvim', lazy = false, priority = 1000 },
  -- { 'loctvl842/monokai-pro.nvim', lazy = false, priority = 1000 },
  -- { 'ramojus/mellifluous.nvim', lazy = false, priority = 1000 },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("solarized-osaka").setup{ transparent = false, }
  --   end,
  -- },

  -- { "miikanissi/modus-themes.nvim", lazy = false, priority = 1000 },
  -- { 'pappasam/papercolor-theme-slim', lazy = false, priority = 1000 },
  -- { 'jackplus-xyz/binary.nvim', lazy = false, priority = 1000 },
  -- { 'zenbones-theme/zenbones.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   dependencies = "rktjmp/lush.nvim"
  -- },
}
-- vim: ts=2 sts=2 sw=2 et
