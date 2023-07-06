require('telescope').setup {
   defaults = {
      file_ignore_patterns = {
         "node_modules", ".git", "target"
      }
   }
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set("n", '<leader>ps', builtin.live_grep)
