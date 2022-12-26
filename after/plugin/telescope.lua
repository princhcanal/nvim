local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>F", builtin.live_grep, {})

require("telescope").setup({
	pickers = {
		find_files = {
			hidden = true,
		},
		git_files = {
			hidden = true,
		},
	},
	defaults = {
		layout_strategy = "vertical",
		layout_config = {
			height = 0.95,
			width = 0.95,
			-- other layout configuration here
		},
		-- other defaults configuration here
	},
	-- other configuration values here
})
