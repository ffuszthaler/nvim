function OnAttach(client)
  client.resolved_capabilities.document_formatting = false

  require("lsp_signature").on_attach()
end

require("lspconfig").tsserver.setup {
  on_attach = OnAttach,
  settings = {
    documentFormatting = false,
  },
}
