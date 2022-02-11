-- local gl = require "galaxyline"
-- --local colors = require('galaxyline.theme').default

-- local colors = {
--   bg = "#20232800", --with transparency
--   fg = "#bbc2cf",
--   -- fg = '#70747C',
--   yellow = "#ECBE7B",
--   cyan = "#008080",
--   darkblue = "#081633",
--   green = "#98be65",
--   orange = "#FF8800",
--   violet = "#a9a1e1",
--   magenta = "#c678dd",
--   blue = "#51afef",
--   red = "#ec5f67",
-- }

-- local condition = require "galaxyline.condition"
-- local gls = gl.section
-- gl.short_line_list = { "NvimTree", "vista", "dbui", "packer" }

-- gls.left[1] = {
--   RainbowRed = {
--     --provider = function() return '▊ ' end,
--     provider = function()
--       return "▎ "
--     end,
--     highlight = { colors.blue, colors.bg },
--   },
-- }

-- -- for  and  to work press ctrl-v (or ctrl-s) twice in insert mode
-- gls.left[2] = {
--   ViMode = {
--     provider = function()
--       -- auto change color according the vim mode
--       local mode_color = {
--         n = colors.red,
--         i = colors.green,
--         v = colors.blue,
--         [''] = colors.blue,
--         V = colors.blue,
--         c = colors.magenta,
--         no = colors.red,
--         s = colors.orange,
--         S = colors.orange,
--         [''] = colors.orange,
--         ic = colors.yellow,
--         R = colors.violet,
--         Rv = colors.violet,
--         cv = colors.red,
--         ce = colors.red,
--         r = colors.cyan,
--         rm = colors.cyan,
--         ["r?"] = colors.cyan,
--         ["!"] = colors.red,
--         t = colors.red,
--       }
--       vim.api.nvim_command("hi GalaxyViMode guifg=" .. mode_color[vim.fn.mode()])
--       return "  "
--     end,
--     highlight = { colors.red, colors.bg, "bold" },
--   },
-- }

-- gls.left[3] = {
--   FileSize = {
--     provider = "FileSize",
--     condition = condition.buffer_not_empty,
--     highlight = { colors.fg, colors.bg },
--   },
-- }

-- gls.left[4] = {
--   FileIcon = {
--     provider = "FileIcon",
--     condition = condition.buffer_not_empty,
--     highlight = { require("galaxyline.provider_fileinfo").get_file_icon_color, colors.bg },
--   },
-- }

-- gls.left[5] = {
--   FileName = {
--     provider = "FileName",
--     condition = condition.buffer_not_empty,
--     highlight = { colors.magenta, colors.bg, "bold" },
--   },
-- }

-- gls.left[6] = {
--   LineInfo = {
--     provider = "LineColumn",
--     separator = " ",
--     separator_highlight = { "NONE", colors.bg },
--     highlight = { colors.fg, colors.bg },
--   },
-- }

-- gls.left[7] = {
--   PerCent = {
--     provider = "LinePercent",
--     separator = " ",
--     separator_highlight = { "NONE", colors.bg },
--     highlight = { colors.fg, colors.bg, "bold" },
--   },
-- }

-- gls.left[8] = {
--   DiagnosticError = {
--     provider = "DiagnosticError",
--     icon = "  ",
--     highlight = { colors.red, colors.bg },
--   },
-- }

-- gls.left[9] = {
--   DiagnosticWarn = {
--     provider = "DiagnosticWarn",
--     icon = "  ",
--     highlight = { colors.yellow, colors.bg },
--   },
-- }

-- gls.left[10] = {
--   DiagnosticHint = {
--     provider = "DiagnosticHint",
--     icon = "  ",
--     highlight = { colors.cyan, colors.bg },
--   },
-- }

-- gls.left[11] = {
--   DiagnosticInfo = {
--     provider = "DiagnosticInfo",
--     icon = "  ",
--     highlight = { colors.blue, colors.bg },
--   },
-- }

-- gls.right[1] = {
--   ShowLspClient = {
--     provider = "GetLspClient",
--     condition = function()
--       local tbl = { ["dashboard"] = true, [""] = true }
--       if tbl[vim.bo.filetype] then
--         return false
--       end
--       return true
--     end,
--     icon = " ",
--     highlight = { colors.blue, colors.bg },
--   },
-- }

-- gls.right[2] = {
--   FileEncode = {
--     provider = "FileEncode",
--     condition = condition.hide_in_width,
--     separator = " ",
--     separator_highlight = { "NONE", colors.bg },
--     highlight = { colors.green, colors.bg, "bold" },
--   },
-- }

-- gls.right[3] = {
--   FileFormat = {
--     provider = "FileFormat",
--     condition = condition.hide_in_width,
--     separator = " ",
--     separator_highlight = { "NONE", colors.bg },
--     highlight = { colors.green, colors.bg, "bold" },
--   },
-- }

-- gls.right[4] = {
--   GitIcon = {
--     provider = function()
--       return "  "
--     end,
--     condition = condition.check_git_workspace,
--     separator = " ",
--     separator_highlight = { "NONE", colors.bg },
--     highlight = { colors.violet, colors.bg, "bold" },
--   },
-- }

-- gls.right[5] = {
--   GitBranch = {
--     provider = "GitBranch",
--     condtion = require("galaxyline.provider_vcs").check_git_workspace,
--     highlight = { colors.violet, colors.bg, "bold" },
--   },
-- }

-- gls.right[6] = {
--   DiffAdd = {
--     provider = "DiffAdd",
--     condition = condition.hide_in_width,
--     icon = "   ",
--     highlight = { colors.green, colors.bg },
--   },
-- }

-- gls.right[7] = {
--   DiffModified = {
--     provider = "DiffModified",
--     condition = condition.hide_in_width,
--     icon = "   ",
--     highlight = { colors.orange, colors.bg },
--   },
-- }

-- gls.right[8] = {
--   DiffRemove = {
--     provider = "DiffRemove",
--     condition = condition.hide_in_width,
--     icon = "   ",
--     highlight = { colors.red, colors.bg },
--   },
-- }

-- gls.right[9] = {
--   ScrollBar = {
--     provider = "ScrollBar",
--     condition = condition.checkwidth,
--     separator = " ",
--     highlight = { colors.blue, colors.bg },
--   },
-- }

-- --[[gls.right[8] = {
--   RainbowBlue = {
--     provider = function() return ' ▊' end,
--     highlight = {colors.blue,colors.bg}
--   },
-- }]]
-- --

-- gls.short_line_left[1] = {
--   BufferType = {
--     provider = "FileTypeName",
--     separator = " ",
--     separator_highlight = { "NONE", colors.bg },
--     highlight = { colors.blue, colors.bg, "bold" },
--   },
-- }

-- gls.short_line_left[2] = {
--   SFileName = {
--     provider = "SFileName",
--     condition = condition.buffer_not_empty,
--     highlight = { colors.fg, colors.bg, "bold" },
--   },
-- }

-- gls.short_line_right[1] = {
--   BufferIcon = {
--     provider = "BufferIcon",
--     highlight = { colors.fg, colors.bg },
--   },
-- }

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'solarized_dark',
    section_separators = {left = '', right = ''},
    component_separators = {left = '', right = ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {
      { 'diagnostics', sources = {"nvim_diagnostic"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
      'encoding',
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'fugitive', 'nvim-tree'}
}
