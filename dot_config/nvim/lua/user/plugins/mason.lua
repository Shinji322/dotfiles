return {
  { "williamboman/mason.nvim", opts = { PATH = "append" } },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "gopls",
        "marksman",
        "pyright",
        "lua_ls",
        "texlab",
        "rust_analyzer",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "shellcheck",
        "black",
        "shfmt",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "bash",
        "cppdbg",
        "delve",
        "python",
      },
    },
  },
}
