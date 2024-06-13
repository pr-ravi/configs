-- for linting etc
-- none-ls wraps additional tools as an LSP server
-- https://github.com/nvimtools/none-ls.nvim
-- for additional linters etc, ensure it's installed via Mason
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
