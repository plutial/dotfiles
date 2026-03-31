vim.pack.add({"https://github.com/nvim-lualine/lualine.nvim"})

require("lualine").setup({
    options = {
        theme = "gruvbox-material",
        component_separators = {},
        section_separators = {},
    },
    sections = {
        lualine_a = {},
        lualine_b = {'filename'},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {'filename'},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
})
