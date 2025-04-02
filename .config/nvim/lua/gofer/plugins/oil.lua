return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
    config = function ()
	local oil = require("oil")
	oil.setup({
	    default_file_explorer = true,
	    columns = {
		"icon",
	    },
	    win_options = {
		wrap = false,
		signcolumn = "no"
	    },
	    delete_to_trash = false,
	    skip_confirm_for_simple_edits = true,
	    float = {
		padding = 2,
		border = "rounded"
	    }
	})
    	vim.keymap.set('n', '<leader>ee', '<CMD>Oil --float<CR>', {desc = "open explorer"})
    end
}
