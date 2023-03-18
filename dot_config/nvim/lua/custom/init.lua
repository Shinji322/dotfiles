-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)

require("custom.neovim").config()
require("custom.plugins.orgmode")

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

-- autocmd("BufWrite", {
--   pattern = "~/.local/src/dwmblocks/config.h",
--   callback = function()
--     os.execute("cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks }")
--   end,
-- })
--
--
