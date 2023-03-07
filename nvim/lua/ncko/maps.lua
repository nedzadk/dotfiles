local keymap = vim.api.nvim_set_keymap
local keymapset = vim.keymap.set
local builtin = require('telescope.builtin')

keymap('n', ';sf', ':Neotree float reveal_force_cwd<CR>', {noremap = true})

keymapset('n', ';f', function()
    builtin.find_files({
      no_ignore = true,
      hidden = true,
    }) end)

keymapset('n', ';r', function()
    builtin.live_grep({
      no_ignore = true,
      hidden = true,
    }) end)

keymapset('n', ';b', function()
    builtin.buffers({
      no_ignore = true,
      hidden = true,
    }) end)


keymap('n', ';1', ':BufferLineGoToBuffer 1<CR>', {noremap = true})
keymap('n', ';2', ':BufferLineGoToBuffer 2<CR>', {noremap = true})
keymap('n', ';3', ':BufferLineGoToBuffer 3<CR>', {noremap = true})
keymap('n', ';4', ':BufferLineGoToBuffer 4<CR>', {noremap = true})
keymap('n', ';5', ':BufferLineGoToBuffer 5<CR>', {noremap = true})
keymap('n', ';6', ':BufferLineGoToBuffer 6<CR>', {noremap = true})
keymap('n', ';7', ':BufferLineGoToBuffer 7<CR>', {noremap = true})
keymap('n', ';8', ':BufferLineGoToBuffer 8<CR>', {noremap = true})
keymap('n', ';9', ':BufferLineGoToBuffer 9<CR>', {noremap = true})
keymap('n', ';0', ':BufferLineCyclePrev<CR>', {noremap = true})
keymap('n', ';-', ':BufferLineCycleNext<CR>', {noremap = true})


keymapset('n', 'gf', '<cmd>Lspsaga lsp_finder<CR>')
keymapset('n', 'gr', '<cmd>Lspsaga rename<CR>')
keymapset('n', 'gR', '<cmd>Lspsaga rename ++project<CR>')
keymapset('n', 'gd', '<cmd>Lspsaga peek_definition<CR>')
keymapset('n', '<space>', '<cmd>Lspsaga show_line_diagnostics<CR>')

