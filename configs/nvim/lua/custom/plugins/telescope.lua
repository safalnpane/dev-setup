return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local t_builtin = require('telescope.builtin')

			vim.keymap.set('n', '<Leader>ff', t_builtin.find_files, {})
			vim.keymap.set('n', '<Leader>fg', t_builtin.live_grep, {})
		end,
	}
}
