return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
    	local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope previously open files' })
vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = 'Available commands' })
vim.keymap.set('n', '<leader>cc', builtin.colorscheme, { desc = 'Available commands' })
    end
}
