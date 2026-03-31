vim.pack.add({"https://github.com/nvim-telescope/telescope.nvim"})
vim.pack.add({"https://github.com/nvim-lua/plenary.nvim"})
vim.pack.add({"https://github.com/nvim-telescope/telescope-fzf-native.nvim"})

-- Keybinds for telescope
local builtin = require('telescope.builtin')

-- Find files
vim.keymap.set('n', '<leader>pf', builtin.find_files)
vim.keymap.set('n', '<C-p>', builtin.git_files)

-- Grep files from text
vim.keymap.set('n', '<leader>pg', builtin.live_grep)
vim.keymap.set('n', '<leader>ps', function()
builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>pws', function()
local word = vim.fn.expand("<cword>")
builtin.grep_string({ search = word })
end)
vim.keymap.set('n', '<leader>pWs', function()
local word = vim.fn.expand("<cWORD>")
builtin.grep_string({ search = word })
end)
