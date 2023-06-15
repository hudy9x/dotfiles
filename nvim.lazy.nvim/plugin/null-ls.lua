local ok, null_ls = pcall(require, 'null-ls')
if not ok then return end

null_ls.setup({
	debug = true,
	sources = {
		null_ls.builtins.formatting.eslint_d
	}
})
