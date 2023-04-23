return {
  n = {
    [";"] = { ":", desc = "Enter command mode" },
    ["q:"] = { ":", desc = "ignore garbage" },
    ["ga"] = { "<Plug>(EasyAlign)", desc = "Easy Align" },
    -- Neogen
    ["<leader>a"] = { desc = "󰏫 Annotate" },
    ["<leader>a<cr>"] = { function() require("neogen").generate() end, desc = "Current" },
    ["<leader>ac"] = { function() require("neogen").generate { type = "class" } end, desc = "Class" },
    ["<leader>af"] = { function() require("neogen").generate { type = "func" } end, desc = "Function" },
    ["<leader>at"] = { function() require("neogen").generate { type = "type" } end, desc = "Type" },
    ["<leader>aF"] = { function() require("neogen").generate { type = "file" } end, desc = "File" },
    -- Trouble
    ["<leader>x"] = { desc = "裂Trouble" },
    ["<leader>xx"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
    ["<leader>xX"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
    ["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "TODOs (Trouble)" },
    -- Telekasten
    ["<leader>n"] = { desc = " Notes" },
    ["<leader>nt"] = { "<cmd>Telekasten goto_today<cr>", desc = "Open today's daily note" },
    ["<leader>nn"] = { "<cmd>Telekasten new_note<cr>", desc = "Create new note" },
    ["<leader>nf"] = { "<cmd>Telekasten find_notes<cr>", desc = "Find notes" },
    -- Telescope
    ["<leader>fs"] = {
      function() require("telescope.builtin").symbols { sources = { "emoji", "kaomoji", "gitmoji" } } end,
      desc = "Find symbols",
    },
    ["<leader>fn"] = { "<cmd>Telekasten find_notes<cr>", desc = "Find notes" },
  },
}
