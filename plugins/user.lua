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
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop" },
  },

  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup {
  --       suggestion = {
  --         auto_trigger = true,
  --         keymap = {
  --           accept = "<D-i>",
  --         },
  --       },
  --       filetypes = {
  --         rust = false,
  --       },
  --     }
  --   end,
  -- },
  {
    "huggingface/hfcc.nvim",
    cmd = "HFccSuggestion",
    config = function()
      require("hfcc").setup {
        model = "bigcode/starcoder",
        query_params = {
          max_new_tokens = 200,
          temperature = 0.2,
          top_p = 0.95,
          stop_token = "<|endoftext|>",
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
  { "GCBallesteros/jupytext.vim" },
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
