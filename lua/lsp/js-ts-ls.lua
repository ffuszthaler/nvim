function OnAttach(client)
  client.resolved_capabilities.document_formatting = false

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

require("lspconfig").tsserver.setup {
  on_attach = OnAttach,
  settings = {
    documentFormatting = false,
  },
}
