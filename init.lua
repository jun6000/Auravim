require('bufferline').setup{}
require('bar')
require('base')
require('Comment').setup()
require('completion')
require('filetree')
require('plugins')
require('keymaps')
require('lspconfig')
require('lualine').setup()
require('mason').setup()
require('mason-lspconfig').setup()

-- More settings
local opt = vim.opt

opt.wrap = true
opt.linebreak = true
opt.showbreak = "↳" .. " "
opt.so = 999
