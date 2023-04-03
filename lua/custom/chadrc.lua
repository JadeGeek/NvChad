-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local pluginConfs = require "custom.plugins.configs"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "tokyodark",
}

M.options = {
  user = function()
  end,
}
M.mappings = require "custom.mapping"

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
    ["lewis6991/gitsigns.nvim"] = pluginConfs.gitsigns,
    ["williamboman/mason"] = pluginConfs.mason
  }
}


return M
