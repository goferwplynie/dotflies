require("gofer.keybinds")
require("gofer.options")
require("gofer.lazy")

vim.g.have_nerd_font = true

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 2,
    },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

