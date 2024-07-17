-- lua/user/plugins.lua
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'hoob3rt/lualine.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
  use 'lukas-reineke/indent-blankline.nvim'
  
  use {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async'
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- Agrega null-ls.nvim
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

use {
  'akinsho/toggleterm.nvim',
  tag = 'v2.*',
  config = function()
    require("toggleterm").setup{}
  end
}

use {
  'mfussenegger/nvim-dap',
  requires = {
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
    'nvim-neotest/nvim-nio',  -- Añadir nvim-nio aquí
  },
  config = function()
    require("dapui").setup()
  end
}

use {
  'mfussenegger/nvim-dap',
  requires = {'rcarriga/nvim-dap-ui'}
}

end)

