return {
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy", -- Or `LspAttach`
		priority = 1000, -- needs to be loaded in first
		config = function()
				require('tiny-inline-diagnostic').setup({
					preset = "minimal",

				})
		end
	},
	{ -- keybinds popup window, super useful
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
	{ -- fzf in neovim, thats great!
		"ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.icons" },
    opts = {},
		config = function()
      local actions = require("fzf-lua").actions
      require("fzf-lua").setup({
        fzf_colors = { false },
        grep = {
          actions = {
            ['ctrl-alt-o'] = {
              fn = actions.file_edit_or_qf, prefix = 'select-all+'
            },
          },
        },
      })
			vim.keymap.set("n", "<leader>sh", require("fzf-lua").helptags, { desc = "[S]earch [H]elp" })
			vim.keymap.set("n", "<leader>sk", require("fzf-lua").keymaps, { desc = "[S]earch [K]eymaps" })
			vim.keymap.set("n", "<leader>sf", require("fzf-lua").files, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>ss", require("fzf-lua").builtin, { desc = "[S]earch [S]elect fzf-lua" })
			vim.keymap.set("n", "<leader>sg", require("fzf-lua").grep_curbuf, { desc = "[S]earch [G]rep curbuf" })
			vim.keymap.set("n", "<leader>sl", require("fzf-lua").live_grep, { desc = "[S]earch by [L]ive grep" })
			vim.keymap.set("n", "<leader>sd", require("fzf-lua").diagnostics_document, { desc = "[S]earch [D]iagnostics" })
			vim.keymap.set("n", "<leader>s.", require("fzf-lua").oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
			vim.keymap.set("n", "<leader><leader>", require("fzf-lua").buffers, { desc = "[S]earch [B]uffers" })
			vim.keymap.set("n", "<leader>sr", require("fzf-lua").registers, { desc = "[S]earch [R]egisters" })
			vim.keymap.set('n', 'gf', require("fzf-lua").lsp_finder, { desc = "[G]oto [f]finder" })
			vim.keymap.set('n', 'gd', require("fzf-lua").lsp_definitions, { desc = "[G]oto [d]efinitions" })
			vim.keymap.set('n', 'gr', require("fzf-lua").lsp_references, { desc = "[G]oto [d]references" })
			vim.keymap.set('n', 'gi', require("fzf-lua").lsp_implementations, { desc = "[G]oto [i]mplementations" })
		end,
	},
	{ -- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require'nvim-treesitter.configs'.setup {
				ensure_installed = {
					"bash",
					"fish",
					"c",
					"cpp",
					"make",
					"lua",
					"luadoc",
					"html",
					"css",
					"markdown",
					"markdown_inline",
					"vim",
					"vimdoc",
				},
				auto_install = false,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			}
		end,
	},
	{
		'saghen/blink.cmp',
		dependencies = {
			'rafamadriz/friendly-snippets',
		},

		-- use a release tag to download pre-built binaries
		version = '1.*',

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			-- All presets have the following mappings:
			-- C-s: builtin neovim signature help
			-- C-space: Open menu or open docs if already open
			-- C-n/C-p or Up/Down: Select next/previous item
			-- C-e: Hide menu
			-- C-k: Toggle signature help (if signature.enabled = true)
			-- See :h blink-cmp-config-keymap for defining your own keymap
			keymap = { preset = 'default' },

			appearance = {
				nerd_font_variant = 'mono'
			},
			completion = {
				documentation = { auto_show = false },
				menu = {
					auto_show = false,
				},
			},
			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
			},
			fuzzy = { implementation = "prefer_rust_with_warning" }
		},
		opts_extend = { "sources.default" }
	},
}
