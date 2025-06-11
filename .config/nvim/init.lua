require("gofer.keybinds")
require("gofer.options")
require("gofer.lazy")

vim.g.have_nerd_font = true

vim.diagnostic.config({virtual_text = true})

require'colorizer'.setup({
  'css';
  'scss';
  'html';
}, {
  mode = 'background'; -- or 'virtualtext'
})
