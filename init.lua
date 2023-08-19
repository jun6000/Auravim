require('base')
require('plugins')
require('mason').setup()
require('mason-lspconfig').setup()
require('bufferline').setup{}
require('bar')
require('Comment').setup()
require('completion')
require('filetree')
require('keymaps')
require('lspconfig')
require('lualine').setup()

-- More settings
local opt = vim.opt

opt.wrap = true
opt.linebreak = true
opt.showbreak = "↳" .. " "
opt.so = 999
