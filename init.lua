require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colors"
require "user.lsp"
require "user.cmp"
require "user.treesitter"
require "user.telescope"

-- you can change the string  value here between mac or windows to load your nvim config on either OS.
local default_folder = 'mac'

-- setup for mac
if default_folder == "mac" then
    vim.cmd[[cd /Users/brian/Documents/Coding]]
	vim.api.nvim_create_user_command(
	'GoNvimConfig',
	function()
		vim.cmd[[Explore /Users/brian/.config/nvim]]
	end,
	{}
	)

elseif default_folder == "windows" then
	vim.cmd[[cd /Users/brian/Documents/Coding]]
	vim.api.nvim_create_user_command(
	'GoNvimConfig',
	function()
		vim.cmd[[Explore /Users/brian/.config/nvim]]
	end,
	{}
	)
end
