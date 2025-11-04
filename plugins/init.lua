return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Add Harpoon plugin block here:
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2", -- Harpoon 2 (latest version)
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()

      -- optional keymaps
      vim.keymap.set("n", "<leader>o", function()
        require("harpoon"):list():append()
      end)

      vim.keymap.set("n", "<C-e>", function()
        require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
      end)

      vim.keymap.set("n", "<C-h>", function()
        require("harpoon"):list():select(1)
      end)

      vim.keymap.set("n", "<C-j>", function()
        require("harpoon"):list():select(2)
      end)

      vim.keymap.set("n", "<C-k>", function()
        require("harpoon"):list():select(3)
      end)

      vim.keymap.set("n", "<C-l>", function()
        require("harpoon"):list():select(4)
      end)
    end,
  },

  -- Custom Treesitter support
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = {
  --       "vim", "lua", "vimdoc", "html", "css"
  --     },
  --   },
  -- },
}
