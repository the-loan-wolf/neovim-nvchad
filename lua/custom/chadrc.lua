---@type ChadrcConfig
local M = {}

M.ui = { theme = "tokyonight" }
vim.opt.relativenumber = true
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})

return M
