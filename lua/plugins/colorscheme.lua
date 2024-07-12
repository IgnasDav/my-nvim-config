return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		local tokyonight = require("tokyonight")
		tokyonight.setup({
			on_colors = function(colors)
				colors.bg = "#111219"
			end,
		})
		vim.cmd([[colorscheme tokyonight-storm]])
	end,
}
