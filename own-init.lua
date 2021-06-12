-- require('completion-nvim')
require('own-keymappings')
require('own-compe-extra')
require('specs-setup')
require('neoscroll-setup')
vim.cmd('source ~/.local/share/nvim/site/pack/packer/start/vim-sandwich/macros/sandwich/keymap/surround.vim')
vim.cmd('source ~/.config/nvim/vimscript/own-settings.vim')
vim.cmd('source ~/.config/nvim/lua/lv-barbar/init.vim')

require 'colorizer'.setup()
-- vim.g.nb_style = "STYLE"
-- require('colorbuddy').colorscheme('nightbuddy')
