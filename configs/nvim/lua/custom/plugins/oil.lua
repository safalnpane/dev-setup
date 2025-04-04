return {
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- Config Oil
            require("oil").setup({
                columns = { "icon" },
                view_options = {
                    show_hidden = true,
                    is_always_hidden = function(name, _)
                        local folder_skip = { "node_modules", "__pycache__", ".git", ".DS_Store", ".cache" }
                        return vim.tbl_contains(folder_skip, name)
                    end,
                },
            })

            -- Keymap for Oil
            vim.keymap.set("n", "<Leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
            vim.keymap.set("n", "<space>-", require("oil").toggle_float)
        end,
    }
}
