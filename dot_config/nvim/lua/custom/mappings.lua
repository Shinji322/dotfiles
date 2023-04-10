---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["f"] = {":HopChar1<CR>", "hop to specific character" },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = { ":LazyGit<CR>", "start lazygit" },
    ["<C-g>"] = { ":LazyGit<CR>", "start lazygit" },
    ["<leader>n"] = { ":Telekasten panel<CR>", "start telekasten" },
    ["<leader>nf"] = { ":Telekasten find_notes<CR>", "start telekasten" },
    ["<leader>ng"] = { ":Telekasten search_notes<CR>", "start telekasten" },
    ["<leader>nz"] = { ":Telekasten follow_link<CR>", "start telekasten" },
    ["<leader>nn"] = { ":Telekasten new_note<CR>", "start telekasten" },
    ["<leader>nc"] = { ":Telekasten show_calendar<CR>", "start telekasten" },
    ["<leader>nb"] = { ":Telekasten show_backlinks<CR>", "start telekasten" },
    ["<leader>ni"] = { ":Telekasten insert_image_link<CR>", "start telekasten" },
  },
  i = {
    ["[["] = { "<ESC>:Telekasten insert_link<CR>", "inserts telekasten link" },
    ["jk"] = { "<Esc>", "jk to escape" },
  },
}

-- more keybinds!

return M
