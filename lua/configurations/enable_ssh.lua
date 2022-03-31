-- 如果你想启用纯净的SSH，可以require这个模块
require("packer").startup({
  function(use)
    use("wbthomason/packer.nvim")
  end,
  config = {
    git = {
      default_url_format = "git@github.com:%s",
    },
  },
})


require("nvim-treesitter.install").prefer_git = true
local parsers = require("nvim-treesitter.parsers").get_parser_configs()
for _, p in pairs(parsers) do
  p.install_info.url = p.install_info.url:gsub(
    "https://github.com/",
    "git@github.com:"
  )
end
