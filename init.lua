require('base')
require('plugins')
require('mason').setup()
require('mason-lspconfig').setup()
require('completion')
require('keymaps')
require('lspconfig')
require('bar')
require('filetree')

-- More settings
local opt = vim.opt

opt.wrap = true
opt.linebreak = true
opt.showbreak = "↳" .. " "
-- opt.so = 999
opt.so = 0
