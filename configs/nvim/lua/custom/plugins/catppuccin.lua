return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup()

			-- Set 'catppuccin' as the current colorscheme
			vim.cmd.colorscheme "catppuccin-mocha"
		end
	}
}
