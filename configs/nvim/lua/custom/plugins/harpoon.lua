return {
	{
		"ThePrimeagen/harpoon",
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			harpoon = require('harpoon').setup({})

			vim.keymap.set("n", "<Leader>a", require('harpoon.mark').add_file)
			vim.keymap.set("n", "<Leader>t", require('harpoon.ui').toggle_quick_menu)
		end,
	}
}
