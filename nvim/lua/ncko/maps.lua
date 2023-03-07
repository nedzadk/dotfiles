local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>sf', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', {noremap = true})
