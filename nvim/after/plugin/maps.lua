-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>', {})
vim.keymap.set('n', '<leader>fx', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', {})

-- Bufferline
vim.keymap.set('n', '<Tab>', '<CMD>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<CMD>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<leader>bf','<CMD>BufferLinePick<CR>', {})
