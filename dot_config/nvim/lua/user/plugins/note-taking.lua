return {
  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    lazy = false,
    config = function()
      home = vim.fn.expand "~/notes" -- Put the name of your notes directory here
      require("telekasten").setup {
        home = home,
        take_over_my_home = true,
        dailies = home .. "/" .. "daily",
        weeklies = home .. "/" .. "weekly",
        templates = home .. "/" .. "templates",
        image_subdir = "img",
        extension = ".md",
        follow_creates_nonexisting = true,
        dailies_create_nonexisting = true,
        weeklies_create_nonexisting = true,
        template_new_note = home .. "/" .. "templates/new_note.md",
        template_new_daily = home .. "/" .. "templates/daily.md",
        template_new_weekly = home .. "/" .. "templates/weekly.md",
        image_link_style = "markdown",
        plug_into_calendar = true,
        calendar_opts = {
          weeknm = 4,
          calendar_monday = 1,
          calendar_mark = "left-fit",
        },
        close_after_yanking = false,
        insert_after_inserting = true,
        tag_notation = "#tag",
        command_palette_theme = "ivy",
        show_tags_theme = "ivy",
        subdirs_in_links = true,
        template_handling = "smart",
        new_note_location = "smart",
        rename_update_links = true,
      }
    end,
  },
  {
    --- Probably should add keybinds at some point
    "nvim-telescope/telescope-symbols.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
  },
}
