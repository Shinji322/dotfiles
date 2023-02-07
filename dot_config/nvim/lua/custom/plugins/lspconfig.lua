-- custom.plugins.lspconfig
-- Check "https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md"
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local _, lspconfig = pcall(require, "lspconfig")

local servers = {
  "bashls", "html", "cssls", "clangd", "pyright", "dockerls", "gdscript", "gopls", "graphql", "jsonls", "sqlls", "rust_analyzer", "tsserver", "texlab"
}
-- ltex-ls has to be manually configured
-- asm-lsp has to be manually set up

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
