-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)

require("custom.neovim").config()

-- Autocompiling rmarkdown documents
vim.api.nvim_set_keymap("n", "<F5>", ":!Rscript -e \"rmarkdown::render('%:p')\"<CR>", {silent=true})
