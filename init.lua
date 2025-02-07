-- init.lua
vim.g.mapleader = ' '

-- Packer bootstrap
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

-- Load configurations
require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.colorscheme")
--require("user.cmp")
--require("user.lsp")
require("user.telescope")
require("user.treesitter")
--require("user.autopairs")
--require("user.comment")
--require("user.gitsigns")
require("user.nvim-tree")
--require("user.bufferline")
require("user.lualine")
--require("user.toggleterm")
--require("user.project")
--require("user.impatient")
--require("user.indentline")
--require("user.alpha")
--require("user.whichkey")
--require("user.autocommands")
--require("user.dap")

local dap = require('dap')

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = { os.getenv('HOME') .. '/.vscode-node-debug2/out/src/nodeDebug.js' },
}

dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
}

require("dapui").setup()
