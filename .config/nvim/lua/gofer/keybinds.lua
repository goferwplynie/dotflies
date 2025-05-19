vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>sv', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<leader>sh', '<cmd>split<CR>')

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, { desc = 'rename' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'format' })
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { desc = 'code action' })

vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, { desc = 'open diagnostics' })

vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = 'go to definition' })
vim.keymap.set('n', '<leader>H', vim.lsp.buf.hover, { desc = 'hover documentation' })

vim.keymap.set('t', 'Esc', "<C-\\><C-n><C-w>h",{silent = true})
