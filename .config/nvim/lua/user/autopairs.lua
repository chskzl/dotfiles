local npairs = require("nvim-autopairs")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")

npairs.setup {
	check_ts = true,

	fast_wrap = {
		map = "<M-e>",
		chars = {"{", "[", "(", '"', "'"},
		pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
		offset = 0,
		end_key = "$",
		keys = "abcdefghijklmnopqrstuvwxyz",
		check_comma = true,
		highlight = "PmenuSel",
		highlight_grey = "LineNr"
	}
}

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })

