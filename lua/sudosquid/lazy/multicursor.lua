return {
    "jake-stewart/multicursor.nvim",
    config = function()
        local mc = require("multicursor-nvim")

        mc.setup({})

        vim.keymap.set({"n", "v"}, "<C-n>", function() mc.addCursor("*") end)
        vim.keymap.set({"n", "v"}, "<C-s>", function() mc.skipCursor("*") end)

        vim.keymap.set("n", "<esc>", function()
            if not mc.cursorsEnabled() then
                mc.enableCursors()
            elseif mc.hasCursors() then
                mc.clearCursors()
            end
        end)

        vim.keymap.set("n", "<leader>a", mc.alignCursors)
        vim.keymap.set("v", "<leader>S", mc.splitCursors)
        vim.keymap.set("v", "I", mc.insertVisual)
        vim.keymap.set("v", "A", mc.appendVisual)

        vim.api.nvim_set_hl(0, "MultiCursorCursor", { link = "Cursor" })
        vim.api.nvim_set_hl(0, "MultiCursorVisual", { link = "Visual" })
        vim.api.nvim_set_hl(0, "MultiCursorSign", { link = "SignColumn"})
        vim.api.nvim_set_hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
        vim.api.nvim_set_hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
        vim.api.nvim_set_hl(0, "MultiCursorDisabledSign", { link = "SignColumn"})
    end
}

