vim.pack.add({ "https://github.com/hrsh7th/cmp-nvim-lsp" })
vim.pack.add({ "https://github.com/hrsh7th/cmp-buffer" })
vim.pack.add({ "https://github.com/hrsh7th/cmp-path" })
vim.pack.add({ "https://github.com/hrsh7th/cmp-cmdline" })
vim.pack.add({ "https://github.com/hrsh7th/nvim-cmp" })

-- Vsnip
vim.pack.add({ "https://github.com/hrsh7th/cmp-vsnip" })
vim.pack.add({ "https://github.com/hrsh7th/vim-vsnip" })

local cmp = require("cmp")
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' },
            { name = 'vsnip' },
        },
        {
            { name = 'buffer' },
        }
    )
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})
