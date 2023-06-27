vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "#753749", fg = "#eb6f92" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "#7b603b", fg = "#f6c177" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "#4e676c", fg = "#9ccfd8" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "#625373", fg = "#c4a7e7" })

vim.fn.sign_define("DiagnosticSignError", { text = "✗ ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "⚠︎ ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignHint", { text = " ", texthl = "DiagnosticSignHint" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })

vim.diagnostic.config({ virtual_text = { prefix = " ❤", suffix = "❤ " } })
