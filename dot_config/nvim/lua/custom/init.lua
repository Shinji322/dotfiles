-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)

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
