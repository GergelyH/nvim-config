let g:sneak#label = 1
let g:dart_style_guide = 2

" function! CompleteAndStepBack()
" 	eval v:lua.MUtils.completion_confirm() 
" 	normal! h
" endfunction 
" 
" function! CompleteAndPutComma()
" 	startinsert
" 	eval compe#complete()
" 	normal! a,
" endfunction 
" 
" inoremap <expr> <C-d> compe#complete()
" " inoremap <silent> <C-s> <Esc>:call CompleteAndStepBack()<CR>i
" inoremap <C-s> <C-d>
" inoremap <C-a> <Esc>:call CompleteAndPutComma()<CR>
" inoremap <expr> <CR> v:lua.MUtils.completion_confirm()
" " vim.api.nvim_set_keymap('i', '<CR>', 'v:lua.MUtils.completion_confirm() | :normal! hh', {expr = true, noremap = true})
" 
