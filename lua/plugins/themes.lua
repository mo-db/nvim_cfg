return {
  -- { 'f-person/auto-dark-mode.nvim',
  --   lazy = false,
  --   priority = math.huge,
  --   opts = {
  --     update_interval = 1000,
  --     set_dark_mode = function()
  --       vim.api.nvim_set_option_value("background", "dark", {})
  --       require('onedark').setup { style = 'dark' }
  --       vim.cmd.colorscheme('sonokai')
  --     end,
  --     set_light_mode = function()
  --       vim.api.nvim_set_option_value("background", "light", {})
  --       require('onedark').setup { style = 'light' }
  --       vim.cmd.colorscheme('tokyonight')
  --       -- vim.cmd.colorscheme('monokai-pro-light')
  --     end,
  --     fallback = "dark"
  --   },
  -- },
  -- {
  --     "zenbones-theme/zenbones.nvim",
  --     dependencies = "rktjmp/lush.nvim",
  --     lazy = false,
  --     priority = 1000,
  --     config = function()
  --     end
  -- },
  { 'bluz71/vim-moonfly-colors', 
    lazy = false, 
    priority = 1000,
    config = function()
    end,
  },
  { 'mofiqul/vscode.nvim', 
    lazy = false, 
    priority = 1000,
    config = function()
    end,
  },
  { 'mo-db/catp-fork.nvim', 
    lazy = false, 
    priority = 1000,
    config = function()
      require("catppuccin").setup {
        color_overrides = {
          latte = {},

          -- solarized-8-flat dark
          frappe = {
            -- [[original colors]]
            -- rosewater = "#f2d5cf",
            -- flamingo = "#eebebe",
            -- pink = "#f4b8e4",
            -- mauve = "#ca9ee6",
            -- red = "#e78284",
            -- maroon = "#ea999c",
            -- peach = "#ef9f76",
            -- yellow = "#e5c890",
            -- green = "#a6d189",
            -- teal = "#81c8be",
            -- sky = "#99d1db",
            -- sapphire = "#85c1dc",
            -- blue = "#8caaee",
            -- lavender = "#babbf1",
            -- text = "#c6d0f5",
            -- subtext1 = "#b5bfe2",
            -- subtext0 = "#a5adce",
            -- overlay2 = "#949cbb",
            -- overlay1 = "#838ba7",
            -- overlay0 = "#737994",
            -- surface2 = "#626880",
            -- surface1 = "#51576d",
            -- surface0 = "#414559",
            -- base = "#303446",
            -- mantle = "#292c3c",
            -- crust = "#232634",

            rosewater = "#93a1a1",
            flamingo = "#93a1a1",
            pink = "#cb4b16",
            mauve = "#b58900",
            red = "#93a1a1",
            maroon = "#93a1a1",
            peach = "#93a1a1",
            yellow = "#859900",
            green = "#2aa198",
            teal = "#93a1a1",
            sky = "#93a1a1",
            sapphire = "#657b83",
            blue = "#268bd2",
            lavender = "#93a1a1",
            text = "#93a1a1",
            subtext1 = "#93a1a1",
            subtext0 = "#93a1a1",
            overlay2 = "#657b83", -- comments
            overlay1 = "#657b83",
            overlay0 = "#586e75",
            surface2 = "#586e75",
            surface1 = "#586e75", -- SignColumn
            surface0 = "#073642", -- seperator
            base = "#002b36",
            mantle = "#073642",
            crust = "#002b36",
          },
          macchiato = {},
          mocha = {},
        },
        custom_highlights = function(colors)
          return {
            -- editor
            Visual = { bg = colors.surface0 }, -- Visual mode selection
            Search = { bg = colors.sapphire, fg = "#eee8d5" },
            IncSearch = { bg = colors.sapphire, fg = "#eee8d5" },

            -- mini.nvim
            MiniStatuslineDevinfo = { bg = colors.surface0 },
            MiniStatuslineFileinfo = { bg = colors.surface0 },
            MiniStatuslineModeCommand = { bg = colors.mauve },
            MiniStatuslineModeInsert = { bg = colors.yellow },
            MiniStatuslineModeNormal = { bg = colors.blue },
            MiniStatuslineModeOther = { bg = colors.blue },
            MiniStatuslineModeReplace = { bg = colors.pink },
            MiniStatuslineModeVisual = { bg = colors.green },
          }
        end,
      }
      vim.cmd.colorscheme('catppuccin-frappe')
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
      vim.g.sonokai_style = 'shusia'
    end,
  },
  { 'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  {
    'comfysage/evergarden',
    priority = 1000,
    opts = {
      transparent_background = false,
      variant = 'medium', -- 'hard'|'medium'|'soft'
      overrides = { }, -- add custom overrides
    }
  },
  {
    "catgoose/nvim-colorizer.lua",
    event = "bufreadpre",
    opts = {},
  },
  { 'alexvzyl/nordic.nvim',
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
  { 'gbprod/nord.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
