vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

vim.opt.completeopt = { "menuone", "noselect", "popup" }

vim.lsp.config("*", {
    capabilities = vim.lsp.protocol.make_client_capabilities(),
})

vim.lsp.config("zls", {
    enable_inlay_hints = true,
    enable_snippets = true,
    warn_style = true,
})

-- Packages
vim.lsp.enable("pyright")
vim.lsp.enable("gopls")
vim.lsp.enable("zls")
vim.lsp.enable("lua_ls")

-- Moving up and down the autocomplete
vim.keymap.set("i", "<C-j>", "<C-n>")
vim.keymap.set("i", "<C-k>", "<C-p>")

-- Go to declaration and definition
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
