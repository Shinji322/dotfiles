return {
  {
    "p00f/clangd_extensions.nvim",
    init = function() table.insert(astronvim.lsp.skip_setup, "clangd") end,
    ft = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    opts = function() return { server = require("astronvim.utils.lsp").config "clangd" } end,
  },
}
