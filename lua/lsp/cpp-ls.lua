function OnAttach(client)
  require("lsp_signature").on_attach()
end

require("lspconfig").ccls.setup {
  on_attach = OnAttach,
}
