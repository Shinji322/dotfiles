-- n, v, i, t = mode names
local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>gg"] = { ":LazyGit<CR>", "start lazygit" },
    ["<C-g>"] = { ":LazyGit<CR>", "start lazygit" },
  },
}

-- more keybinds!

return M
