local configs = require("nvim-treesitter.configs")

configs.setup {
	ensure_installed = {"ada", "c", "cpp", "css", "elixir", "forth", "html", "javascript", "lua", "python", "ruby", "rust"},
	sync_install = false,
	ignore_install = {""},
	highlight = {
		enable = true,
		disable = {""},
		additional_vim_regex_highlighting = false,
	},
	indent = {enabled = true, disable = {"yaml"}}
}

