vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "rose-pine/neovim", as = "rose-pine" }
  
  use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})

  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')


use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
use({'neovim/nvim-lspconfig'})
use({'hrsh7th/nvim-cmp'})
use({'hrsh7th/cmp-nvim-lsp'})

  end)
