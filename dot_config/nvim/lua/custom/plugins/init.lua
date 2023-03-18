return {
  -- For some reason this needs to be the specific order
  ["nvim-telescope/telescope.nvim"] = {
    module = "telescope",
    event = "VimEnter"
  },
  ["renerocksai/telekasten.nvim"] = {
    after = "telescope.nvim",
    config = function ()
      require('telekasten').setup({
        home = os.getenv("HOME") .. "/notes"
      })
    end
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["gpanders/editorconfig.nvim"] = {},
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["folke/which-key.nvim"] = {
    disable = false
  },
  ["kdheepak/lazygit.nvim"] = {},
  -- ["nvim-orgmode/orgmode"] = {
  --   config = function()
  --     require "custom.plugins.orgmode"
  --   end
  -- }
}
