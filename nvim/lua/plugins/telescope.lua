-- telescope, for fuzzy finding, https://github.com/nvim-telescope/telescope.nvim 
return  {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- configure telescope
      local telescope = require('telescope.builtin')
      vim.keymap.set('n', '<C-p>', telescope.find_files, {})
      vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
            -- even more opts
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
