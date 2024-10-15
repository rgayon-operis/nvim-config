-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "bashls",
  "jsonls",
  "pyright",
  "gopls",
  "jinja_lsp",
  "terraformls",
  "yamlls",
  "ansiblels",
  "powershell_es",
  "markdown_oxide",
  "rust_analyzer",
  "denols"
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

lspconfig['powershell_es'].setup {
  bundle_path = "/home/rgayon/.local/share/nvim/mason/packages/powershell-editor-services/"
}

-- -- typescript
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
-- }
