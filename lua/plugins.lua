----------------------------------
-- PLUGINS -----------------------
----------------------------------
vim.cmd([[packadd packer.nvim]])
require("packer").startup(function(use)
  use({ "wbthomason/packer.nvim", opt = true })

-- Quick fuzzy selection for files and more, see plugin settings.
  use({
    'nvim-telescope/telescope.nvim',
    config = function() require('plugins.telescope') end,
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-live-grep-args.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    }
  })

  use({
    "hrsh7th/nvim-cmp",
    requires = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
    },
  })
  use({
    "scalameta/nvim-metals",
    requires = {
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
    },
  })
  use({"dracula/vim", as = "dracula"})
  use 'preservim/nerdtree'
  use 'ryanoasis/vim-devicons'
  use 'vim-airline/vim-airline'
end)

require('scala_metals')
