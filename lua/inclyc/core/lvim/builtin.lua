local M = {}
M.config = function ()
  lvim.builtin.dap.active = true
  lvim.builtin.notify.active = true
  lvim.builtin.terminal.active = true
  lvim.builtin.project.active = true
  lvim.builtin.treesitter.highlight.disable = {}
  lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
  }

  lvim.builtin.treesitter.ignore_install = { "haskell" }
  lvim.builtin.treesitter.highlight.enabled = true
end
return M
