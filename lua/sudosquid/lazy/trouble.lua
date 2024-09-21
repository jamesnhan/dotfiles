return {
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
        keys = {
            {
                "<leader>tt",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
            {
                "<leader>[t",
                "<cmd>Trouble diagnostics next<cr>",
                desc = "Diagnostics (Trouble)",
            },
            {
                "<leader>]t",
                "<cmd>Trouble diagnostics previous<cr>",
                desc = "Diagnostics (Trouble)",
            },
        },
    },
}

