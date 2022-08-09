local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
-- LSP names reference: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {
  "html",
  "cssls",
  "eslint",
  "tsserver",
  "rust_analyzer",
  "elixirls",
  -- "prismals"
 }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
