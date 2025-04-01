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
  { 'ficcdaf/ashen.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local variant = require("ashen.state").variant
      local palette = require("ashen.variants." .. variant .. ".colors")
      require("ashen").setup({
        colors = {
          g_1 = palette.g_3,
          g_2 = palette.g_3,
          g_4 = palette.g_3,
          g_5 = palette.g_3,
          red_flame = palette.red_glowing,
          red_ember = "#b53d3f",
          orange_golden = palette.orange_glow,
        },
        hl = {
          ---@type HighlightMap
          merge_override = {
            ["@function.macro"] = { "#B14242" },
            LineNr = { palette.g_7, "background" },
            Error = { "red_glowing", nil },
          },
          ---@type table<HighlightName, HighlightName>
          link = {
            -- link FlashBackdrop to Normal
            FlashBackdrop = "Normal",
          },
        },
      })
      -- vim.cmd("colorscheme ashen")
    end,
  },
  { 'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'rmehri01/onenord.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'yorik1984/newpaper.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'bluz71/vim-moonfly-colors',
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'bluz71/vim-nightfly-colors',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'vague2k/vague.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },

  { 'rebelot/kanagawa.nvim',
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
      vim.g.sonokai_style = 'default'
      vim.cmd.colorscheme('sonokai')
    end,
  },
  { 'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = 'hard'
    end,
  },
  {
    'comfysage/evergarden',
    lazy = false,
    priority = 1000,
    config = function()
    end,
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
  { 'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'NTBBloodbath/doom-one.nvim',
    lazy = false,
    priority = 1000,
    config = function()
    end,
  },
  { 'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
      -- vim.cmd("colorscheme gruvbox")
    end,
    -- config = function()
    --   local bg = "#151b23"
    --   local bg2 = "#0d1118"
    --   local fg = "#f0f6fd"
    --   local fg2 = "#9298a1"
    --   local blue = "#79c0ff"
    --   local red = "#ff7b72"
    --   local purple = "#d2a7ff"
    --
    --   -- local fg = "#93a1a1"
    --   -- local fg2 = "#586e75"
    --   -- local bg = "#002b36"
    --   -- local bg2 = "#073642"
    --   -- local purple = "#859900"
    --   -- local red = "#cb4b16"
    --   -- local blue = "#268bd2"
    --
    --   require("gruvbox").setup({
    --     terminal_colors = true, -- add neovim terminal colors
    --     undercurl = true,
    --     underline = true,
    --     bold = true,
    --     italic = {
    --       strings = true,
    --       emphasis = true,
    --       comments = true,
    --       operators = false,
    --       folds = true,
    --     },
    --     strikethrough = true,
    --     invert_selection = false,
    --     invert_signs = false,
    --     invert_tabline = false,
    --     invert_intend_guides = false,
    --     inverse = true, -- invert background for search, diffs, statuslines and errors
    --     contrast = "", -- can be "hard", "soft" or empty string
    --     dim_inactive = false,
    --     transparent_mode = false,
    --     palette_overrides = {
    --       dark0_hard = bg,
    --       dark0 = bg,
    --       dark0_soft = bg,
    --       dark1 = bg2,
    --       dark2 = bg,
    --       dark3 = fg2,
    --       dark4 = fg2,
    --       light0_hard = fg,
    --       light0 = fg,
    --       light0_soft = fg,
    --       light1 = fg,
    --       light2 = fg2,
    --       light3 = fg2,
    --       light4 = fg2,
    --       bright_red = red,
    --       bright_green = purple,
    --       bright_yellow = fg,
    --       bright_blue = blue,
    --       bright_purple = fg,
    --       bright_aqua = fg,
    --       bright_orange = fg,
    --       neutral_red = fg,
    --       neutral_green = fg,
    --       neutral_yellow = fg,
    --       neutral_blue = fg,
    --       neutral_purple = fg,
    --       neutral_aqua = fg,
    --       neutral_orange = fg,
    --       faded_red = fg,
    --       faded_green = fg,
    --       faded_yellow = fg,
    --       faded_blue = fg,
    --       faded_purple = fg,
    --       faded_aqua = fg,
    --       faded_orange = fg,
    --       dark_red_hard = fg,
    --       dark_red = fg,
    --       dark_red_soft = fg,
    --       light_red_hard = fg,
    --       light_red = fg,
    --       light_red_soft = fg,
    --       dark_green_hard = fg,
    --       dark_green = fg,
    --       dark_green_soft = fg,
    --       light_green_hard = fg,
    --       light_green = fg,
    --       light_green_soft = fg,
    --       dark_aqua_hard = fg,
    --       dark_aqua = fg,
    --       dark_aqua_soft = fg,
    --       light_aqua_hard = fg,
    --       light_aqua = fg,
    --       light_aqua_soft = fg,
    --       gray = fg2,
    --
    --       -- dark0_hard = "#1d2021",
    --       -- dark0 = "#282828",
    --       -- dark0_soft = "#32302f",
    --       -- dark1 = "#3c3836",
    --       -- dark2 = "#504945",
    --       -- dark3 = "#665c54",
    --       -- dark4 = "#7c6f64",
    --       -- light0_hard = "#f9f5d7",
    --       -- light0 = "#fbf1c7",
    --       -- light0_soft = "#f2e5bc",
    --       -- light1 = "#ebdbb2",
    --       -- light2 = "#d5c4a1",
    --       -- light3 = "#bdae93",
    --       -- light4 = "#a89984",
    --       -- bright_red = "#fb4934",
    --       -- bright_green = "#b8bb26",
    --       -- bright_yellow = "#fabd2f",
    --       -- bright_blue = "#83a598",
    --       -- bright_purple = "#d3869b",
    --       -- bright_aqua = "#8ec07c",
    --       -- bright_orange = "#fe8019",
    --       -- neutral_red = "#cc241d",
    --       -- neutral_green = "#98971a",
    --       -- neutral_yellow = "#d79921",
    --       -- neutral_blue = "#458588",
    --       -- neutral_purple = "#b16286",
    --       -- neutral_aqua = "#689d6a",
    --       -- neutral_orange = "#d65d0e",
    --       -- faded_red = "#9d0006",
    --       -- faded_green = "#79740e",
    --       -- faded_yellow = "#b57614",
    --       -- faded_blue = "#076678",
    --       -- faded_purple = "#8f3f71",
    --       -- faded_aqua = "#427b58",
    --       -- faded_orange = "#af3a03",
    --       -- dark_red_hard = "#792329",
    --       -- dark_red = "#722529",
    --       -- dark_red_soft = "#7b2c2f",
    --       -- light_red_hard = "#fc9690",
    --       -- light_red = "#fc9487",
    --       -- light_red_soft = "#f78b7f",
    --       -- dark_green_hard = "#5a633a",
    --       -- dark_green = "#62693e",
    --       -- dark_green_soft = "#686d43",
    --       -- light_green_hard = "#d3d6a5",
    --       -- light_green = "#d5d39b",
    --       -- light_green_soft = "#cecb94",
    --       -- dark_aqua_hard = "#3e4934",
    --       -- dark_aqua = "#49503b",
    --       -- dark_aqua_soft = "#525742",
    --       -- light_aqua_hard = "#e6e9c1",
    --       -- light_aqua = "#e8e5b5",
    --       -- light_aqua_soft = "#e1dbac",
    --       -- gray = "#928374",
    --     },
    --     overrides = {
    --       String = { fg = blue},
    --       Include = { fg = red },
    --       Define = { fg = red },
    --     }
    --   })
    -- end,
  },
  { 'catppuccin/nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- local bin_fg = "#93a1a1"
      -- local bin_mid = "#586e75"
      -- local bin_lbg = "#073642"
      -- local bin_bg = "#002b36"
      -- local blue = "#268bd2"
      -- local purple = "#6c71c4"
      -- local green = "#859900"
      -- local red = "#dc322f"
      -- local teal = "#2aa198"

      local bin_bg = "#151b23"
      local bin_lbg = "#0d1118"
      local bin_fg = "#f0f6fd"
      local bin_mid = "#9298a1"
      local blue = "#79c0ff"
      local red = "#ff7b72"
      local purple = "#d2a7ff"
      local teal = blue
      local green = blue


      require("catppuccin").setup {
        color_overrides = {
          latte = {},
          mocha = {
            rosewater = bin_fg,
            flamingo = bin_fg,
            pink = bin_fg,
            mauve = green,
            red = red,
            maroon = blue,
            peach = bin_fg,
            yellow = bin_fg,
            green = teal,
            teal = bin_fg,
            sky = bin_fg,
            sapphire = bin_fg,
            blue = purple,
            lavender = bin_fg,
            text = bin_fg,
            subtext1 = bin_fg,
            subtext0 = bin_fg,
            overlay2 = bin_mid, -- comments
            overlay1 = bin_mid,
            overlay0 = bin_mid,
            surface2 = bin_mid,
            surface1 = bin_mid, -- SignColumn
            surface0 = bin_lbg, -- seperator
            base = bin_bg,
            mantle = bin_lbg,
            crust = bin_lbg,
          },
        },
        custom_highlights = function(colors)
          return {
            -- -- editor
            -- Visual = { bg = colors.surface0 }, -- Visual mode selection
            -- Search = { bg = colors.sapphire, fg = colors.rosewater },
            -- IncSearch = { bg = colors.sapphire, fg = colors.rosewater },
            -- Function = { fg = colors.blue },
            -- Constant = { fg = colors.maroon },
            -- Comment = { fg = colors.surface1 },
            -- Number = { fg = blue },
            -- Boolean = { fg = colors.text },
            -- Macro = { fg = colors.maroon },
            -- Define = { fg = colors.mauve },
            -- PreProc = { fg = colors.mauve },
            --
            -- -- tree-sitter
            -- ["@function.builtin"] = { fg = colors.blue },
            -- ["@constant.builtin"] = { fg = colors.maroon },
            -- ["@parameter"] = { fg = colors.text },
            -- ["@variable.parameter"] = { fg = colors.text },
            -- ["@string.regexp"] = { fg = red },
            --
            -- -- markdown
            -- markdownCode = { fg = colors.green },
            -- markdownCodeBlock = { fg = colors.green },
            --
            -- mini.nvim
            -- MiniStatuslineDevinfo = { bg = colors.surface0 },
            -- MiniStatuslineFileinfo = { bg = colors.surface0 },
            -- MiniStatuslineModeCommand = { bg = colors.yellow},
            -- MiniStatuslineModeInsert = { bg = teal},
            -- MiniStatuslineModeNormal = { bg = blue },
            -- MiniStatuslineModeOther = { bg = blue },
            -- MiniStatuslineModeReplace = { bg = colors.pink },
            -- MiniStatuslineModeVisual = { bg = colors.mauve},
          }
        end,
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
