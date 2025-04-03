return {
  { -- data only repo, just some defaults
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      require("lspconfig").basedpyright.setup {}
      require("lspconfig").clangd.setup {
        cmd = { "clangd",
          "--fallback-style=LLVM",
          "--header-insertion=never",
          "--clang-tidy",
          "--background-index"
        },
      }
      require("lspconfig").lua_ls.setup{}

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(ev)
          vim.keymap.set('n', 'gd', require("fzf-lua").lsp_definitions,
            { buffer = ev.buf, desc = "[G]oto [d]efinition" })
          vim.keymap.set('n', 'gr', require("fzf-lua").lsp_references,
            { buffer = ev.buf, desc = "[G]oto [r]eference" })
        end,
      })
    end,
  },
}
