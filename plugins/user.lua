return {
  {
    -- VimBeGood
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
  },
  {
    -- Primagen Harpoon
    "ThePrimeagen/harpoon",
  },
  { "simrat39/rust-tools.nvim" },
  { "neovim/nvim-lspconfig" },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<D-i>",
          },
        },
        filetypes = {
          rust = false,
        },
      }
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "quarto-dev/quarto-nvim",
    version = "0.7.3",
    cmd = { "Quarto", "QuartoPreview" },
    dev = false,
    dependencies = {
      { "hrsh7th/nvim-cmp" },
      {
        "jmbuhr/otter.nvim",
        version = "0.8.1",
        dev = false,
        config = function()
          require("otter.config").setup {
            lsp = {
              -- hover = {
              -- border = require("misc.style").border,
              -- },
            },
          }
        end,
      },
    },
    config = function()
      require("quarto").setup {
        debug = false,
        closePreviewOnExit = true,
        lspFeatures = {
          enabled = true,
          languages = { "python", "julia", "bash" },
          chunks = "curly", -- 'curly' or 'all'
          diagnostics = {
            enabled = true,
            triggers = { "BufWritePost" },
          },
          completion = {
            enabled = true,
          },
        },
        keymap = {
          hover = "K",
          definition = "gd",
        },
      }
    end,
  },

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
}
