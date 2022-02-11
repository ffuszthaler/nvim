require("null-ls").setup({
  sources = {
    require("null-ls").builtins.formatting.stylua,
    require("null-ls").builtins.diagnostics.eslint,
    require("null-ls").builtins.formatting.prettier.with {
      extra_args = { "--end-of-line auto", "--single-quote" }
    },
    require("null-ls").builtins.completion.spell,
  },
})

-- ^N issue seems to be fixed in 0.7.0
-- https://github.com/neovim/neovim/pull/17087
-- might need to play with prettier settings once it has been fixed
