local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {})
vim.keymap.set('n', '<leader>uu', ':PackerSync<CR>', {})
vim.keymap.set('n', '<C-w>', ':bdelete<CR>', {})
vim.keymap.set('n', '<C-n>', ':bnext<CR>', {})
vim.keymap.set('n', '<C-p>', ':bprev<CR>', {})
vim.keymap.set('n', '<leader><CR>', ':ToggleTerm<CR>', {})
