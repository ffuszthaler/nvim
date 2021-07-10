require("lspinstall").setup()

local servers = require("lspinstall").installed_servers()
for _, server in pairs(servers) do
  require("lspconfig")[server].setup {}
end

-- icons
vim.fn.sign_define("LspDiagnosticsSignError", {
  -- text = "",
  text = "",
  texthl = "LspDiagnosticsSignError",
  linehl = "",
  numhl = "LspDiagnosticsSignError",
})

vim.fn.sign_define("LspDiagnosticsSignWarning", {
  -- text = "",
  text = "",
  texthl = "LspDiagnosticsSignWarning",
  linehl = "",
  numhl = "LspDiagnosticsSignWarning",
})

vim.fn.sign_define("LspDiagnosticsSignHint", {
  -- text = "",
  -- text = "",
  -- text  = "",
  -- text = "",
  text = "",
  texthl = "LspDiagnosticsSignHint",
  linehl = "",
  numhl = "LspDiagnosticsSignHint",
})

vim.fn.sign_define("LspDiagnosticsSignInformation", {
  -- text = "",
  -- text = "",
  -- text = "",
  text = "",
  texthl = "LspDiagnosticsSignInformation",
  linehl = "",
  numhl = "LspDiagnosticsSignInformation",
})
