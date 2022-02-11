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
