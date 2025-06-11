return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		'saadparwaiz1/cmp_luasnip',
		'L3MON4D3/LuaSnip',
		{ "antosha417/nvim-lsp-file-operations", config = false },
		{ "folke/neodev.nvim",                   opts = {} },
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		local luasnip = require('luasnip')

		local servers = {
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						telemetry = { enable = false },
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
						},

					},
				}
			},
			--gopls = {},
			pyright = {},
			html = {},
			svelte = {},
			clangd = {},
			jdtls = {},
			ts_ls = {},
			intelephense = {},
		}

		--mason_lspconfig.setup_handlers({
		--function(server)
		--lspconfig[server].setup({
		--capabilities = capabilities
		--})
		--end
		--})
		local cmp = require("cmp")
		cmp.setup {
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
				['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
				-- C-b (back) C-f (forward) for snippet placeholder navigation.
				['<C-Space>'] = cmp.mapping.complete(),
				['<CR>'] = cmp.mapping.confirm {
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				},
				['<Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					else
						fallback()
					end
				end, { 'i', 's' }),
				['<S-Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { 'i', 's' }),
			}),
			sources = {
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
			},
		}
		for server, config in pairs(servers) do
			config.capabilities = capabilities
			lspconfig[server].setup(config)
		end
	end,
}
