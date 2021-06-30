function TsserverOnAttach(client)
    client.resolved_capabilities.document_formatting = false
end

require'lspconfig'.tsserver.setup {
  on_attach = TsserverOnAttach,
  settings = {
    documentFormatting = false
  }
}
