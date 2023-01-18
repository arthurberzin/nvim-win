local lsp_status = require('lsp-status')

lsp_status.register_progress()

lsp_status.config({
    indicator_separator = ":",
    component_separator = "",
    indicator_errors = 'Error',
    indicator_warnings = 'Warn',
    indicator_info = 'Inf',
    indicator_hint = '?',
    indicator_ok = 'Ok',
    kind_labels = vim.g.completion_customize_lsp_label,
    select_symbol = function(cursor_pos, symbol)
        if symbol.valueRange then
          local value_range = {
            ["start"] = {
              character = 0,
              line = vim.fn.byte2line(symbol.valueRange[1])
            },
            ["end"] = {
              character = 0,
              line = vim.fn.byte2line(symbol.valueRange[2])
            }
          }
    
          return require("lsp-status.util").in_range(cursor_pos, value_range)
        end
      end,
  })

