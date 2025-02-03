vim.g.mapleader = ' '
vim.g.maplocalleader = '//'

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true 
vim.opt.number = true
vim.opt.relativenumber = true

-- mouse mode for some actions
vim.opt.mouse = "a"
vim.opt.wrap = true
vim.opt.colorcolumn = "81"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

vim.opt.undofile = true
vim.opt.breakindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus left" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus right" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus lower" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus upper" })

-- overwrite C-d and C-u to center cursor after command
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Move half-down center"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Move half-up center"})

-- quickfix
vim.keymap.set("n", "<C-M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-M-k>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<C-M-o>", "<cmd>copen<CR>")
vim.keymap.set("n", "<C-M-i>", "<cmd>cclose<CR>")
vim.api.nvim_create_user_command('Make',
  function()
    vim.cmd('silent make')
    vim.cmd('copen')
  end,
  {})
vim.api.nvim_create_user_command('Makr',
  function(opts)
    vim.cmd('silent make run')
    vim.cmd('copen')
  end,
  {})
vim.api.nvim_create_user_command('Makc',
  function(opts)
    vim.cmd('silent make clean')
    vim.cmd('copen')
  end,
  {})
vim.keymap.set('n', "<C-M-m>", ':Make<CR>', { noremap = true, silent = true })
vim.keymap.set('n', "<C-M-n>", ':Makr<CR>', { noremap = true, silent = true })
vim.keymap.set('n', "<C-M-b>", ':Makc<CR>', { noremap = true, silent = true })


-- [[ Basic Autocommands ]]
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

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
  checker = { enabled = false },
})
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
