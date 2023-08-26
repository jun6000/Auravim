local builtin = require('telescope.builtin')
local vim = vim

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>cc', ':tabnew $MYVIMRC<CR>', {})
vim.keymap.set('n', '<leader>ww', ':w | so<CR>', {})
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {})
vim.keymap.set('n', '<leader>uu', ':execute "MasonUpdate" | PackerSync<CR>', {})
vim.keymap.set('n', '<C-w>', ':bdelete<CR>', {})
vim.keymap.set('n', '<C-n>', ':bnext<CR>', {})
vim.keymap.set('n', '<C-p>', ':bprev<CR>', {})
vim.keymap.set('n', '<leader><CR>', ':ToggleTerm<CR>', {})
