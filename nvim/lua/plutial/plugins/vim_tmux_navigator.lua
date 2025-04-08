return {
    "christoomey/vim-tmux-navigator",
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
    },
    keys = {
        { "<C-w>h", "<cmd>TmuxNavigateLeft<cr>" },
        { "<C-w>j", "<cmd>TmuxNavigateDown<cr>" },
        { "<C-w>k", "<cmd>TmuxNavigateUp<cr>"   },
        { "<C-w>l", "<cmd>TmuxNavigateRight<cr>"},
    },
}
