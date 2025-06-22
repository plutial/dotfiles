return {
    "nvim-telescope/telescope.nvim",

    branch = "0.1.x",

    dependencies = {
        "nvim-lua/plenary.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    },

    config = function()
        require("telescope").setup({
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
            },

            defaults = {
                mappings = {
                    i = {
                    },
                },
            },
        })

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files)
        vim.keymap.set('n', '<leader>pg', builtin.live_grep)
        vim.keymap.set('n', '<C-p>', builtin.git_files)
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}
