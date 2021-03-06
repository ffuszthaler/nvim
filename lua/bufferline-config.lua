require("bufferline").setup {
  options = {
    offsets = { { filetype = "NvimTree", text = "", padding = 0 } },
    indicator_icon = '',
    separator_style = {"", ""},
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    buffer_close_icon = "",
    modified_icon = "",
    show_close_icon = false,
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    show_tab_indicators = true,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_close_icons = true,
    always_show_bufferline = false,
  },
}
