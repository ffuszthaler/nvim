local lsp_installer = require "nvim-lsp-installer"

-- gutter icons for lsp diagnostics (should be the same as status line)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local function on_attach(client, bufnr)
  -- Set up buffer-local keymaps (vim.api.nvim_buf_set_keymap()), etc.
  if client.name == "tsserver" then
    client.resolved_capabilities.document_formatting = false
  end
end

require("lsp_signature").on_attach()

-- local enhance_server_opts = {
--   -- Provide settings that should only apply to the "eslintls" server
--   ["eslintls"] = function(opts)
--     opts.settings = {
--       format = {
--         enable = true,
--       },
--     }
--   end,
-- }

lsp_installer.on_server_ready(function(server)
  -- Specify the default options which we'll use to setup all servers
  local opts = {
    on_attach = on_attach,
  }

  -- if enhance_server_opts[server.name] then
  --   -- Enhance the default opts with the server-specific ones
  --   enhance_server_opts[server.name](opts)
  -- end

  server:setup(opts)
end)
