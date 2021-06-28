function tsserver_on_attach(client)
    client.resolved_capabilities.document_formatting = false
end

require'lspconfig'.tsserver.setup {
  on_attach = tsserver_on_attach,
  settings = {
    documentFormatting = false
  }
}
