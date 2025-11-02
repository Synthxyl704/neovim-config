---@type ConformOpts
local opts = {
  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = true,
  },

  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    c = { "clang_format" },
    cpp = { "clang_format" },
  },
}

return opts
