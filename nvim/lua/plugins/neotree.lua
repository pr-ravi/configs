-- neo-tree, https://github.com/nvim-neo-tree/neo-tree.nvim
return{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      -- configure neo-tree
      -- vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
      vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle left<CR>')
      require("neo-tree").setup({
        close_if_last_window = true,
      })
    end
  }

