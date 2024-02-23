return {
	"projekt0n/github-nvim-theme",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		local specs = {
			all = {
				syntax = {
					-- Specs allow you to define a value using either a color or template. If the string does
					-- start with `#` the string will be used as the path of the palette table. Defining just
					-- a color uses the base version of that color.
					keyword = "yellow.bright",
					-- Adding either `.bright` will change the value
					conditional = "orange",
					number = "orange",
					const = "blue",
					variable = "red",
					type = "magenta",
					func = "green",
					field = "white",
					bracket = "magenta",
				},
				git = {
					-- A color define can also be used
					changed = "#ffa261",
				},
			},
		}
		require("github-theme").setup({ specs = specs })
		vim.cmd("colorscheme github_dark_high_contrast")
	end,
}
