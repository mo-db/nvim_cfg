return {
  { 'f-person/auto-dark-mode.nvim',
    lazy = false,
    priority = math.huge,
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option_value("background", "dark", {})
        vim.cmd.colorscheme('nord')
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value("background", "light", {})
        vim.cmd.colorscheme('onedark')
      end,
      fallback = "dark"
    },
  },
  { 'sainnhe/sonokai', 
    lazy = false, 
    priority = 1000,
    config = function()
      -- shusia, espresso, maia, andromeda, atlantis, default
      vim.g.sonokai_style = 'shusia'
    end,
  },
  { 'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('onedark').setup { style = 'dark' }
    end,
  },
  { 'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'gbprod/nord.nvim',
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
}
-- vim: ts=2 sts=2 sw=2 et
