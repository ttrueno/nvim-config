local dap = require'dap'
local dapui = require'dapui'
local dapgo = require'dap-go'
dapgo.setup()

require "dapui".setup({
  icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
})




require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
  ...
})




vim.keymap.set('n', '<leader>b', function() 
   dap.toggle_breakpoint()
end)

vim.keymap.set('n', '<leader>db', function() 
   dap.continue()
end)



dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

