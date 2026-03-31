vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

-- Update the parsers
require("nvim-treesitter").update()
require("nvim-treesitter").install({
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "rust",
    "javascript",
    "zig"
})

-- Highlighting
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "<filetype>" },
    callback = function() vim.treesitter.start() end,
})

-- Indentation
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
