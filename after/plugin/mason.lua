local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp_config = require("lspconfig")

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"tsserver", -- Note: tsserver set up in typescript.lua
		"eslint",
		"html",
		"cssls",
	},
})

lsp_config["angularls"].setup({
	capabilities = capabilities,
})

lsp_config["cssmodules_ls"].setup({
	capabilities = capabilities,
})

lsp_config["cssls"].setup({
	capabilities = capabilities,
})

lsp_config["tailwindcss"].setup({
	capabilities = capabilities,
})

lsp_config["html"].setup({
	capabilities = capabilities,
})

lsp_config["vimls"].setup({
	capabilities = capabilities,
})

lsp_config["lua_ls"].setup({
	capabilities = capabilities,
})

lsp_config["rust_analyzer"].setup({
	capabilities = capabilities,
})
