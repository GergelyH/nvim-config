require('neoscroll').setup({
    -- All these keys will be mapped. Pass an empty table ({}) for no mappings
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing = false,              -- easing_function will be used in all scrolling animations with some defaults
    easing_function = function(x) return math.pow(x, 2) end -- default easing function

})

local easing1 = [[function(x) return math.pow(x, 2) end]]
local easing2 = [[function(x) return math.pow(x, 3) end]]

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
-- Use easing1 function from 7 ms to 15 ms time-step
t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '3', '6', easing1}}
t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '3', '6', easing1}}
-- Use easing2 function from 5 ms to 20 ms time-step
t['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '4', '9', easing2}}
t['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '4', '9', easing2}}
-- Use the default easing function defined in easing_function from 20 ms to 30 ms time-step
t['<C-y>'] = {'scroll', {'-0.10', 'false', '20', '30'}}
t['<C-e>'] = {'scroll', { '0.10', 'false', '20', '30'}}
-- Use a constant time-step of 7 ms
t['zt']    = {'zt', {'4'}}
t['zz']    = {'zz', {'4'}}
t['zb']    = {'zb', {'4'}}

require('neoscroll.config').set_mappings(t)
