function OnAttach(client)
  -- icons for completion list items
  local protocol = require "vim.lsp.protocol"

  protocol.CompletionItemKind = {
    "", -- Text          = 1;
    "", -- Method        = 2;
    "ƒ", -- Function      = 3;
    "", -- Constructor   = 4;
    "", -- Field         = 5;
    "", -- Variable      = 6;
    "", -- Class         = 7;
    "ﰮ", -- Interface     = 8;
    "", -- Module        = 9;
    "", -- Property      = 10;
    "", -- Unit          = 11;
    "", -- Value         = 12;
    "了", -- Enum         = 13;
    "", -- Keyword       = 14;
    "﬌", -- Snippet       = 15;
    "", -- Color         = 16;
    "", -- File          = 17;
    "", -- Reference     = 18;
    "", -- Folder        = 19;
    "", -- EnumMember    = 20;
    "", -- Constant      = 21;
    "", -- Struct        = 22;
    "ﯓ", -- Event         = 23;
    "", -- Operator      = 24;
    "", -- TypeParameter = 25;
  }

  require("lsp_signature").on_attach()
end

require("lspinstall").setup()

local servers = require("lspinstall").installed_servers()
for _, server in pairs(servers) do
  require("lspconfig")[server].setup {
    on_attach = OnAttach,
  }
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
