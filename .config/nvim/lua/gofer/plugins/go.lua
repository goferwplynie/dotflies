return {
	"ray-x/go.nvim",
	dependencies = { -- optional packages
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("go").setup()
		local keymap = vim.keymap

		keymap.set('n', '<leader>gta', '<cmd>GoAddTag<cr>', { desc = "add tags to struct" })
		keymap.set('n', '<leader>gtr', '<cmd>GoRmTag<cr>', { desc = "remove tags from struct" })

		-- Run gofmt + goimports on save

		local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.go",
			callback = function()
				require('go.format').goimports()
			end,
			group = format_sync_grp,
		})
	end,
	event = { "CmdlineEnter" },
	ft = { "go", 'gomod' },
	build = ':lua require("go.install").update_all_sync()'
}
