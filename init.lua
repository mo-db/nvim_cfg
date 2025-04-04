-- [[ Settings ]]
vim.g.mapleader = ' '
vim.g.maplocalleader = '//'

-- formating related settings
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "81"
vim.opt.wrap = true

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- diagnostics inline
-- vim.diagnostic.config({virtual_lines = { current_line = true }})

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

-- [[ Keybinds ]]
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds to make split navigation easier.
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-M-h>", "<cmd>vertical res -15<CR>")
vim.keymap.set("n", "<C-M-l>", "<cmd>vertical res +15<CR>")
vim.keymap.set("n", "<C-M-j>", "<cmd>res +15<CR>")
vim.keymap.set("n", "<C-M-k>", "<cmd>res -15<CR>")

-- overwrite C-d and C-u to center cursor after command
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Move half-down center"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Move half-up center"})


-- [[ LSP ]]
vim.lsp.config['luals'] = {
  filetypes = { 'lua' },
  cmd = { 'lua-language-server' },
  root_markers = { '.luarc.json', '.luarc.jsonc' },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      }
    }
  }
}
vim.lsp.config['clangd'] = {
  filetypes = { 'c', 'cpp' },
  cmd = { 'clangd', '--background-index' },
  root_markers = { 'compile_commands.json', 'compile_flags.txt', '.clangd' },
}
vim.lsp.enable({'luals', 'clangd'})



-- [[ Autocommands ]]
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- vim.keymap.set('i', '<c-space>', function()
--   vim.lsp.completion.get()
-- end)
--
-- --Enable builtin autocompletion
-- vim.api.nvim_create_autocmd('LspAttach', {
--   callback = function(ev)
--     local client = vim.lsp.get_client_by_id(ev.data.client_id)
--     if client:supports_method('textDocument/completion') then
--       vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
--     end
--   end,
-- })

-- [[ Plugins ]]
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
