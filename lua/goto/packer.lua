-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
   }

   use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
   use('mbbill/undotree')
   use('vim-airline/vim-airline')
   use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
         -- LSP Support
         {'neovim/nvim-lspconfig'},             -- Required
         {                                      -- Optional
         'williamboman/mason.nvim',
         run = function()
            pcall(vim.cmd, 'MasonUpdate')
         end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
   }
}

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
   require("toggleterm").setup()
end}
use {
   'nvim-tree/nvim-tree.lua',
   requires = {
      'nvim-tree/nvim-web-devicons', -- optional
   },
} 
use {'nyoom-engineering/oxocarbon.nvim', as = "oxocarbon"} 
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }
use {'Mofiqul/vscode.nvim', as = "vscode"}
end)
