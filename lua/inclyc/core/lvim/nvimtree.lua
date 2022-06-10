local M = {}
M.config = function ()
  lvim.builtin.nvimtree.setup.view.side = "left"
  lvim.builtin.nvimtree.setup.renderer.icons.show.folder_arrow = false
  lvim.builtin.nvimtree.setup.actions.open_file.resize_window = true
end
return M
