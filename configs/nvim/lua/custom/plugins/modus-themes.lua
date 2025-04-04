return {
    {
        "miikanissi/modus-themes.nvim",
        priority = 1000,
        config = function()
            -- Configure `modus`
            require("modus-themes").setup({
                style = "modus_vivendi",
                variant = "tritanopia",
		dim_inactive = true
            })

	    -- Set `modus` as the current colorscheme
            vim.cmd.colorscheme "modus"
        end,
    }
}
