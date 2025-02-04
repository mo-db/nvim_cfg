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
  -- { 'mo-db/oilmorris-onedark.nvim', 
  --   lazy = false, 
  --   priority = 1000,
  --   config = function()
  --   end,
  -- },
  { 'bluz71/vim-moonfly-colors', 
    lazy = false, 
    priority = 1000,
    config = function()
    end,
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
      vim.g.sonokai_style = 'shusia'
      vim.cmd.colorscheme('sonokai')
    end,
  },
  { 'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  -- {
  --   'comfysage/evergarden',
  --   priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
  --   opts = {
  --     transparent_background = false,
  --     variant = 'medium', -- 'hard'|'medium'|'soft'
  --     overrides = { }, -- add custom overrides
  --   }
  -- },
  -- {
  --   "catgoose/nvim-colorizer.lua",
  --   event = "BufReadPre",
  --   opts = { -- set to setup table
  --   },
  -- },
  { 'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        -- use the night style
        style = "day",
        -- disable italic for functions
        styles = {
          functions = {}
        },
        on_colors = function(colors)
          colors.bg = "#FFFCF0" --bg #
          colors.bg_dark = "#F2F0E5" --bg2
          colors.bg_dark2 = "#E6E4D9" --ui
          colors.bg_float = "#F2F0E5" --bg2
          colors.bg_highlight = "#CECDC3" --ui3
          colors.bg_popup = "#F2F0E5" --bg2
          colors.bg_search = "#CECDC3" --ui3
          colors.bg_sidebar = "#F2F0E5" --bg2
          colors.bg_statusline = "#F2F0E5" --bg2
          colors.bg_visual = "#CECDC3" --ui3
          colors.black = "#CECDC3" --tx
          colors.blue = "#205EA6" --bl #
          colors.blue0 = "#100F0F"
          colors.blue1 = "#AF3029" --gr #vars
          colors.blue2 = "#100F0F"
          colors.blue5 = "#100F0F"
          colors.blue6 = "#100F0F"
          colors.blue7 = "#100F0F"
          colors.border = "#100F0F"
          colors.border_highlight = "#589ed7"
          colors.comment = "#6F6E69" --tx2
          colors.cyan = "#AF3029" --re
          colors.dark3 = "#545c7e"
          colors.dark5 = "#737aa2"
          colors.diff = {
            add = "#273849",
            change = "#252a3f",
            delete = "#3a273a",
            text = "#394b70"
          }
          colors.error = "#AF3029" --re
          colors.fg = "#100F0F" --tx
          colors.fg_dark = "#6F6E69" --tx2
          colors.fg_float = "#B7B5AC" --tx3
          colors.fg_gutter = "#B7B5AC" --tx3
          colors.fg_sidebar = "#B7B5AC" --tx3
          git = {
            add = "#b8db87",
            change = "#7ca1f2",
            delete = "#e26a75",
            ignore = "#545c7e"
          }
          colors.green = "#AF3029" --gr #
          colors.green1 = "#100F0F" --gr2
          colors.green2 = "#41a6b5"
          colors.hint = "#4fd6be"
          colors.info = "#0db9d7"
          colors.magenta = "#A02F6F" --ma
          colors.magenta2 = "#CE5D97" --ma2
          colors.none = "NONE"
          colors.orange = "#AF3029" --or
          colors.purple = "#5E409D" --pu
          colors.rainbow = { "#82aaff", "#ffc777", "#c3e88d", "#4fd6be",
            "#c099ff", "#fca7ea", "#AF3029", "#ff757f" }
          colors.red = "#AF3029" --re
          colors.red1 = "#AF3029" --re2
          colors.teal = "#3AA99F" --cy2
          colors.terminal = {
            black = "#FFFCF0",
            black_bright = "#444a73",
            blue = "#82aaff",
            blue_bright = "#9ab8ff",
            cyan = "#86e1fc",
            cyan_bright = "#b2ebff",
            green = "#c3e88d",
            green_bright = "#c7fb6d",
            magenta = "#c099ff",
            magenta_bright = "#caabff",
            red = "#ff757f",
            red_bright = "#ff8d94",
            white = "#828bb8",
            white_bright = "#c8d3f5",
            yellow = "#ffc777",
            yellow_bright = "#ffd8ab"
          }
          colors.terminal_black = "#100F0F" --tx
          colors.todo = "#82aaff"
          colors.warning = "#AF3029" --or
          colors.yellow = "#100F0F" --ye
        end,
      })
    end,
  },
  -- { "nuvic/flexoki-nvim", name = "flexoki" },
  -- { 'AlexvZyl/nordic.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --   end,
  -- },
  -- { 'ellisonleao/gruvbox.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --   end,
  -- },
  { 'loctvl842/monokai-pro.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  -- { 'jackplus-xyz/binary.nvim', 
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --   end,
  -- },
  { 'gbprod/nord.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
