return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function() 
      require("catppuccin").setup()
    end
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup()
    end
  },
  { "jose-elias-alvarez/typescript.nvim" },
  {
    "tomasky/bookmarks.nvim",
    config = function ()
      require("bookmarks").setup {
        keywords = {
          ["@n"] = "󱞁",
          ["@w"] = "",
          ["@f"] = "󰧻"
        },
        sign_priority = 8, -- override other signs
      }
    end
  },
  { "lewis6991/gitsigns.nvim" },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  }
}
