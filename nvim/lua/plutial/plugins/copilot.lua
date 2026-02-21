return {
    "https://github.com/github/copilot.vim",

    config = function()
        -- Disable the quota‑limit notification
        vim.g.copilot_disable_message = true
    end,
}
