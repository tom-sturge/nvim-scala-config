return {
  { "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

    vim.keymap.set('n', '<leader>b',
             function() builtin.buffers({
              sort_mru=true,
              ignore_current_buffer=true
             }) end)

    vim.keymap.set('n', '<leader>o', builtin.oldfiles, {})
  end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- This is your opts table
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }

          }
        },
        defaults = {
          file_ignore_patterns = { "project/", "target/" }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
