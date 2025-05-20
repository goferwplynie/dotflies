return{
  'voldikss/vim-floaterm',

  config = function ()
  	vim.keymap.set("n", "<leader>tn", "<cmd>FloatermNew<cr>", { desc = "open new floating terminal"})
  	vim.keymap.set("n", "<leader>tt", "<cmd>FloatermToggle<cr>", { desc = "toggle floating terminal"})
  end
}
