return {
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

	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},

	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>t", vim.cmd.UndotreeToggle)
		end,
	},
  
	{ -- fzf in neovim, thats so gread!
		"ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.icons" },
    opts = {},
		config = function()
      local actions = require("fzf-lua").actions
      require("fzf-lua").setup({
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
			vim.keymap.set("n", "<leader>fd", require("fzf-lua").diagnostics_document, { desc = "[S]earch [D]iagnostics" })
			vim.keymap.set("n", "<leader>s.", require("fzf-lua").oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
			vim.keymap.set("n", "<leader>sb", require("fzf-lua").buffers, { desc = "[S]earch [B]uffers" })
			vim.keymap.set("n", "<leader>sr", require("fzf-lua").registers, { desc = "[S]earch [R]egisters" })
		end,
	},

	{ -- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},

		build = ":TSUpdate",
		main = "nvim-treesitter.configs", -- Sets main module to use for opts
		opts = {
			ensure_installed = {
				"bash",
        "fish",
				"c",
        "cpp",
				"lua",
				"luadoc",
        "html",
        "css",
				"markdown",
				"markdown_inline",
				"vim",
				"vimdoc",
			},
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		},
	},
}
