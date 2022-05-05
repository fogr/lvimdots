local M = {}
M.config = function ()
  vim.g.jupytext_fmt = 'py:percent'
  vim.g.jupytext_print_debug_msgs = 1
end

return M
