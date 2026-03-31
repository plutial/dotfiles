vim.pack.add({"https://github.com/neovim/nvim-lspconfig"})

-- Packages
vim.lsp.enable("pyright")
vim.lsp.enable("gopls")
vim.lsp.enable("zls")
vim.lsp.enable("lua_ls")
