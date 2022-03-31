--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "catppuccin"
lvim.leader = "space"

require('plugins')
-- require('enhancements')
lvim.builtin.dap.active = true
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.project.active = false
vim.g.copilot_no_tab_map = 1
vim.g.copilot_assume_mapped = 1
vim.opt.relativenumber = true
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
