local prettier_formatter = function()
  return {
    exe = "prettier",
    args = { vim.api.nvim_buf_get_name(0) },
    stdin = true,
  }
end

require("formatter").setup {
  logging = false,
  filetype = {
    javascript = { prettier_formatter },
    javascriptreact = { prettier_formatter },
    typescript = { prettier_formatter },
    typescriptreact = { prettier_formatter },
    html = { prettier_formatter },
    json = { prettier_formatter },
    css = { prettier_formatter },
    scss = { prettier_formatter },
    rust = {
      function()
        return {
          exe = "rustfmt",
          args = { "--emit=stdout" },
          stdin = true,
        }
      end,
    },
    lua = {
      function()
        return {
          exe = "stylua",
          args = {},
          stdin = false,
        }
      end,
    },
  },
}

-- format on save
vim.cmd [[
  augroup FormatOnSave
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.html,*.json,*.css,*.scss,*.rs,*.lua FormatWrite
  augroup END
]]
