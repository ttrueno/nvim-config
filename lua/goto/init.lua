require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
vim.cmd("colorscheme oxocarbon")
require("goto.remaps")
require("goto.set")
