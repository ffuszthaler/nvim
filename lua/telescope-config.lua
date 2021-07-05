require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules/*",
      "%.png",
      "%.jpg",
      "%.jpeg",
      "%.bmp",
    },
    prompt_prefix = "❯ ",
    selection_caret = "❯ ",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    scroll_strategy = "cycle",
    color_devicons = true,
    layout_strategy = "flex",
    layout_config = {
      width = 0.75,
      height = 0.75,
      prompt_position = "top",
    },
  }
}
