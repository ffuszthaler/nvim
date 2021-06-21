require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
end

require'lspconfig'.ccls.setup{}
require'lspconfig'.tsserver.setup{}
