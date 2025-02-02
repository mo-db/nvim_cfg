return {
  { 'f-person/auto-dark-mode.nvim',
    lazy = false,
    priority = math.huge,
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option_value("background", "dark", {})
        require('onedark').setup { style = 'dark' }
        vim.cmd.colorscheme('sonokai')
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value("background", "light", {})
        require('onedark').setup { style = 'light' }
        vim.cmd.colorscheme('onedark')
        -- vim.cmd.colorscheme('monokai-pro-light')
      end,
      fallback = "dark"
    },
  },
  {
      "zenbones-theme/zenbones.nvim",
      dependencies = "rktjmp/lush.nvim",
      lazy = false,
      priority = 1000,
      config = function()
      end
  },
  { 'Mofiqul/vscode.nvim', 
    lazy = false, 
    priority = 1000,
    config = function()
    end,
  },
  { 'catppuccin/nvim', 
    lazy = false, 
    priority = 1000,
    config = function()
    end,
  },
  { '2giosangmitom/nightfall.nvim', 
    lazy = false, 
    priority = 1000,
    config = function()
    end,
  },
  { 'sainnhe/sonokai', 
    lazy = false, 
    priority = 1000,
    config = function()
      -- shusia, espresso, maia, andromeda, atlantis, default
      vim.g.sonokai_style = 'andromeda'
    end,
  },
  { 'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup{}
    end,
  },
  {
    'comfysage/evergarden',
    priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    opts = {
      transparent_background = false,
      variant = 'medium', -- 'hard'|'medium'|'soft'
      overrides = { }, -- add custom overrides
    }
  },
  { 'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'loctvl842/monokai-pro.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'jackplus-xyz/binary.nvim', 
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('solarized-osaka').setup{ transparent = false, }
    end,
  },
  -- { 'gbprod/nord.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --   end,
  -- },
}
-- vim: ts=2 sts=2 sw=2 et
