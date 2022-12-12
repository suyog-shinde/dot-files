-- print('**Loaded vimplug.lua**')
local install_path = vim.fn.stdpath('data') .. '/site/autoload/plug.vim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	print('Installing vimplug...')
	local vimplug_url = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	vim.fn.system({'curl','-fLo',install_path,'--create-dirs',vimplug_url})
	print('Done')

	install_plugins = true
end
