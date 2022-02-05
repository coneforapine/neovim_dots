local present, null = pcall(require, "null-ls")
if not present then
	return
end

local formatting = null.builtins.formatting
local diagnostics = null.builtins.diagnostics

null.setup({
	debug = false,
	sources = {
		null.builtins.diagnostics.flake8.with({
			args = { "--max-line-length", "120", "--stdin-display-name", "$FILENAME", "-" },
		}),
		null.builtins.formatting.eslint_d,
		--	null.builtins.formatting.prettier,
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
	},
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[
        augroup LspFormatting
          autocmd! * <buffer>
          autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
        augroup END
      ]])
		end
	end,
})
