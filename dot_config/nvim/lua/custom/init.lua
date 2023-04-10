-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
require("custom.neovim").config()

-- Autocompiling
vim.api.nvim_set_keymap("n", "<S-F5>", ":!compiler %", {silent=true})
vim.api.nvim_set_keymap("n", "<F5>", ":!compiler %<CR>", {silent=true})

-- Autocommands
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWrite", {
  pattern = "xresources",
  callback = function()
    os.execute("xrdb -merge ~/.config/x11/xresources")
  end,
})

autocmd("BufWrite", {
  pattern = "~/.local/src/dwmblocks/config.h",
  callback = function()
    os.execute("sudo make clean install")
  end,
})

