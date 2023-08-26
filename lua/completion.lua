local cmp = require 'cmp'
local luasnip = require 'luasnip'
-- local tabnine = require('cmp_tabnine.config')
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete {},
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        --[[ ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }), ]]
    },
    sources = {
        { name = 'nvim_lsp', keyword_length = 5 },
        { name = 'luasnip', keyword_length = 5 },
        { name = 'path', keyword_length = 5 },
        { name = 'cmdline', keyword_length = 5 },
        { name = 'emoji', keyword_length = 5 },
        { name = 'buffer', keyword_length = 5 },
        -- { name = 'cmp_tabnine' },
    },
}

--[[ tabnine:setup({
    max_lines = 1000,
    max_num_results = 20,
    sort = true,
    run_on_every_keystroke = true,
    snippet_placeholder = '..',
    ignored_file_types = {},
    show_prediction_length = false
}) ]]

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['lua_ls'].setup{
    capabilities = capabilities
}
require('lspconfig')['clangd'].setup{
    capabilities = capabilities
}
require('lspconfig')['golangci_lint_ls'].setup{
    capabilities = capabilities
}
require('lspconfig')['pylsp'].setup{
    capabilities = capabilities
}
require('lspconfig')['diagnosticls'].setup{
    capabilities = capabilities
}
require('lspconfig')['dockerls'].setup{
    capabilities = capabilities
}
require('lspconfig')['docker_compose_language_service'].setup{
    capabilities = capabilities
}
require('lspconfig')['gopls'].setup{
    capabilities = capabilities,
    cmd = {"gopls"},
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            }
        }
    }
}
require('lspconfig')['tsserver'].setup{
    capabilities = capabilities
}
require('lspconfig')['eslint'].setup{
    capabilities = capabilities
}
require('lspconfig')['html'].setup{
    capabilities = capabilities
}
require('lspconfig')['jsonls'].setup{
    capabilities = capabilities
}
require('lspconfig')['cssls'].setup{
    capabilities = capabilities
}
