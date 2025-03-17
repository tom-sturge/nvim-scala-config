return {
  "nvim-treesitter/nvim-treesitter",
  -- build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "javascript", "scala", "typescript", "tsx", "html"},
      highlight = {enabled = true},
      indent = {enable = true}
    })
  end
}
