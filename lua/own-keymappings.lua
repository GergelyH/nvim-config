vim.api.nvim_del_keymap('i','jk')
vim.api.nvim_del_keymap('i','kj')
vim.api.nvim_del_keymap('i','jj')

vim.cmd('inoremap <silent><expr> <C-Space> compe#complete()')
-- vim.cmd('inoremap <silent><expr> <CR>      compe#confirm(\'<CR>\')')

-- Sneak
vim.cmd('nmap s <Plug>SneakLabel_s')
vim.cmd('nmap S <Plug>SneakLabel_S')

vim.cmd('xmap s <Plug>SneakLabel_s')
vim.cmd('xmap S <Plug>SneakLabel_S')


vim.cmd('omap z <Plug>SneakLabel_s')
vim.cmd('omap Z <Plug>SneakLabel_S')

-- vim.cmd("vnoremap <silent><leader>la :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>")
vim.cmd('vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>')
