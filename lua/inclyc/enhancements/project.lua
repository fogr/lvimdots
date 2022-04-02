-- 这个可能带来安全问题。恶意在文件夹中写入.nvim/init.lua可能导致远程代码执行，需要自行检查。
local local_vimrc = vim.fn.getcwd() .. '/.nvim/init.lua'
package.path = package.path .. ';' .. vim.fn.getcwd() .. '/.nvim/lua/?.lua'
package.path = package.path .. ';' .. vim.fn.getcwd() .. '/.nvim/lua/?/init.lua'
if vim.loop.fs_stat(local_vimrc) then
  dofile(local_vimrc)
end
